#!/usr/bin/env ruby
# frozen_string_literal: true

require "date"
require "fileutils"
require "json"
require "set"
require "yaml"

ROOT = File.expand_path("..", __dir__)

def read_front_matter(path)
  text = File.read(path, encoding: "UTF-8")
  match = text.match(/\A---\s*\n(.*?)\n---\s*\n/m)
  return {} unless match

  YAML.safe_load(match[1], permitted_classes: [Date, Time], aliases: true) || {}
end

def delete_generated_docs(dir)
  Dir[File.join(dir, "*.md")].each do |path|
    front_matter = read_front_matter(path)
    File.delete(path) if front_matter["generated"] == true
  end
end

def normalize_text(value)
  return nil if value.nil?

  value
    .to_s
    .encode("UTF-8", invalid: :replace, undef: :replace, replace: "")
    .gsub("â€™", "'")
    .gsub("â€˜", "'")
    .gsub("â€œ", '"')
    .gsub("â€", '"')
    .gsub("â€”", "-")
    .gsub("â€“", "-")
    .gsub("â€¦", "...")
    .gsub("ðŸ‘‰", "")
    .gsub(/[[:space:]]+/, " ")
    .strip
end

def slugify(value)
  normalize_text(value)
    .downcase
    .gsub(/[^a-z0-9]+/, "-")
    .gsub(/\A-+|-+\z/, "")
    .gsub(/-{2,}/, "-")
end

def unique_slug(base_slug, used_slugs, fallback_suffix = nil)
  slug = base_slug
  if slug.nil? || slug.empty?
    slug = fallback_suffix ? "entry-#{fallback_suffix}" : "entry"
  end

  candidate = slug
  counter = 2
  while used_slugs.include?(candidate)
    candidate = if fallback_suffix
                  "#{slug}-#{fallback_suffix.downcase}"
                else
                  "#{slug}-#{counter}"
                end
    counter += 1
  end

  used_slugs << candidate
  candidate
end

def write_doc(path, front_matter)
  FileUtils.mkdir_p(File.dirname(path))
  yaml = front_matter.compact.to_yaml(line_width: -1)
  File.write(path, +"---\n#{yaml.sub(/\A---\s*\n/, "")}---\n", encoding: "UTF-8")
end

def load_existing_video_ids
  Dir[File.join(ROOT, "_videos", "*.md")].map do |path|
    front_matter = read_front_matter(path)
    next if front_matter["generated"] == true

    front_matter["youtube_id"]
  end.compact.to_set
end

articles_dir = File.join(ROOT, "_articles")
media_dir = File.join(ROOT, "_media")
videos_dir = File.join(ROOT, "_videos")

delete_generated_docs(articles_dir)
delete_generated_docs(media_dir)
delete_generated_docs(videos_dir)

article_slugs = Set.new(
  Dir[File.join(articles_dir, "*.md")].map { |path| File.basename(path, ".md") }
)
media_slugs = Set.new(
  Dir[File.join(media_dir, "*.md")].map { |path| File.basename(path, ".md") }
)
video_slugs = Set.new(
  Dir[File.join(videos_dir, "*.md")].map { |path| File.basename(path, ".md") }
)
existing_video_ids = load_existing_video_ids

articles = YAML.safe_load(
  File.read(File.join(ROOT, "_data", "articles.yml"), encoding: "UTF-8"),
  permitted_classes: [Date, Time],
  aliases: true
)

articles.each do |item|
  title = normalize_text(item["title"])
  summary = normalize_text(item["summary"])
  slug = unique_slug(slugify(title), article_slugs)
  write_doc(
    File.join(articles_dir, "#{slug}.md"),
    {
      "title" => title,
      "description" => summary,
      "summary" => summary,
      "publication" => item["publication"],
      "tag" => normalize_text(item["tag"]),
      "external_url" => item["external_url"],
      "featured" => item["featured"],
      "published_label" => item["date_label"],
      "date" => item["date_iso"],
      "generated" => true
    }
  )
end

media_items = YAML.safe_load(
  File.read(File.join(ROOT, "_data", "media.yml"), encoding: "UTF-8"),
  permitted_classes: [Date, Time],
  aliases: true
)

media_items.each do |item|
  title = normalize_text(item["title"])
  summary = normalize_text(item["summary"])
  slug = unique_slug(slugify(title), media_slugs)
  write_doc(
    File.join(media_dir, "#{slug}.md"),
    {
      "title" => title,
      "description" => summary,
      "summary" => summary,
      "outlet" => normalize_text(item["outlet"]),
      "source_url" => item["url"],
      "date_label" => normalize_text(item["date_label"]),
      "generated" => true
    }
  )
end

[
  [File.join(ROOT, "_data", "youtube_videos.json"), "Video", "Long-Form Video"],
  [File.join(ROOT, "_data", "youtube_shorts.json"), "Short", "Short-Form Commentary"]
].each do |json_path, video_type, topic|
  JSON.parse(File.read(json_path, encoding: "UTF-8")).each do |item|
    next if existing_video_ids.include?(item["video_id"])

    title = normalize_text(item["title"])
    summary = normalize_text(item["description"])
    site_slug = begin
      path = item["site_url"].to_s
      path.empty? ? nil : path.split("/").reject(&:empty?).last
    end
    slug = unique_slug(site_slug || slugify(title), video_slugs, item["video_id"])
    write_doc(
      File.join(videos_dir, "#{slug}.md"),
      {
        "title" => title,
        "description" => summary,
        "summary" => summary,
        "why_it_matters" => if video_type == "Short"
                              "This short now has a first-party archive page so it can be discovered alongside the rest of the Chad O. Grant catalog instead of disappearing inside the platform feed."
                            else
                              "This video now has a first-party archive page so the argument can be crawled, linked, and understood as part of the wider Chad O. Grant archive instead of living only on YouTube."
                            end,
        "topic" => topic,
        "video_type" => video_type,
        "featured" => false,
        "thumbnail" => item["thumbnail"],
        "thumbnail_alt" => "Thumbnail for #{title}",
        "youtube_id" => item["video_id"],
        "youtube_url" => item["youtube_url"],
        "watch_url" => item["youtube_url"],
        "published_label" => item["date_label"],
        "date" => item["date_iso"],
        "upload_date" => item["date_iso"] ? "#{item["date_iso"]}T12:00:00Z" : nil,
        "generated" => true
      }
    )
  end
end

puts "Archive pages synced."
