# Chad O. Grant Personal Website

A GitHub Pages-ready Jekyll site for Chad O. Grant's S.C.O.P.E. Report videos,
Substack writing, books, and public macro commentary.

Live project URL:

- `https://cog-tech.github.io/chadogrant/`

Repository:

- `https://github.com/COG-tech/chadogrant`

## Stack

- Jekyll
- Native GitHub Pages deployment from the repository root
- Data-driven content in YAML and Markdown
- Plain CSS and vanilla JavaScript

## File structure

- `_data/site.yml`: site-wide copy, navigation, SEO defaults, and CTA content
- `_data/social.yml`: verified public profile links
- `_data/books.yml`: book metadata, public retail links, and cover sources
- `_data/articles.yml`: external article cards and summaries
- `_data/media.yml`: verified public profile and listing references
- `_videos/*.md`: featured video detail pages
- `_articles/*.md`: hosted article pages and templates
- `_includes/`: reusable SEO, navigation, footer, and card components
- `_layouts/`: page, home, video, and article layouts
- `assets/css/site.css`: full visual system
- `assets/js/site.js`: mobile navigation behavior

## Local preview

1. Install Ruby and Bundler.
2. From the repo root, run `bundle install`.
3. Run `bundle exec jekyll serve`.
4. Open `http://127.0.0.1:4000/chadogrant/`.

If Ruby is not available on the machine, push to GitHub and use the live Pages
deployment as the preview target.

## GitHub Pages deployment

This repo is set up for direct GitHub Pages deployment from the default branch.

1. Push the site to `main`.
2. In GitHub, open `Settings -> Pages`.
3. Set `Source` to `Deploy from a branch`.
4. Choose `main` and `/ (root)`.
5. Save and wait for the Pages build.

## Custom domain setup

This repo is currently configured for the GitHub Pages project URL, not a custom
domain. Do not add a placeholder `CNAME` because it will break the live site.

When you are ready for the custom domain:

1. Create a real `CNAME` file containing only the final domain.
2. Replace `url` in `_config.yml` with the final production domain.
3. In GitHub Pages settings, set the same custom domain.
4. Configure DNS with your registrar.
5. Wait for certificate provisioning.

## Search Console and verification

1. Add the Search Console verification code to `_data/site.yml`.
2. Submit `https://YOUR-DOMAIN/sitemap.xml` after the domain is live.
3. If the domain changes, update `_config.yml`, add or update `CNAME`, and
   resubmit the sitemap.

## Updating content

### Add or update videos

- Create or edit Markdown files in `_videos/`.
- Add the YouTube ID, topic, original summary, why-it-matters copy, and
  published label.
- Set `featured: true` for videos that should appear on the homepage.

### Add or update article links

- Edit `_data/articles.yml`.
- Add the real title, date, topic tag, original summary, and external URL.
- For hosted essays, create a new file in `_articles/`.

### Add or update books

- Edit `_data/books.yml`.
- Replace public retail links with direct author or publisher links when you
  have them.
- Replace any temporary cover source with final official assets.

### Add or update media appearances

- Edit `_data/media.yml`.
- Add interviews, podcasts, mentions, or guest essays once there is a verified
  public source URL.

### Add official profile links

- Edit `_data/social.yml`.
- Keep only verified public URLs. Do not leave fake placeholders.

## Current source-backed references

- YouTube: `https://www.youtube.com/@Chadogrant`
- Substack: `https://chadogrant.substack.com/`
- Google Play book pages for `Dear Son` and `Dawn`
- Amazon retail listing for `The Twin Titans`

## Still needs review

- Dedicated business email if you do not want to use the public Substack
  contact path
- Official LinkedIn URL, if one should be added
- Official cover and richer author-controlled description for `The Twin Titans`
- Search Console verification code
- Final custom domain, when ready
