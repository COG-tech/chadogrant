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
- `_data/books.yml`: book card metadata, public retail links, and cover sources
- `_data/articles.yml`: external article cards and summaries
- `_data/media.yml`: verified public profile and listing references
- `_books/*.md`: on-site book overview pages that can rank and appear in sitemap
- `_media/*.md`: on-site archive pages for verified profiles, listings, and references
- `_videos/*.md`: featured video detail pages
- `_articles/*.md`: hosted article pages and templates
- `scripts/sync_archive_pages.rb`: regenerates article, media, and video archive pages from the data files
- `_includes/`: reusable SEO, navigation, footer, and card components
- `_layouts/`: page, home, video, and article layouts
- `assets/css/site.css`: full visual system
- `assets/js/site.js`: mobile navigation behavior

## Local preview

1. Install Ruby and Bundler.
2. From the repo root, run `bundle install`.
3. Run `.\scripts\update_site.ps1` whenever article, media, or YouTube data changes.
4. Run `bundle exec jekyll serve`.
5. Open `http://127.0.0.1:4000/chadogrant/`.

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

1. Keep the root verification file `google7c0a49f823813e63.html` in place for the current URL-prefix property.
2. Only add a raw meta-tag token to `_data/site.yml` if Google gives you the meta-tag method. Do not paste the `.html` filename into the meta field.
3. Submit `https://YOUR-DOMAIN/sitemap.xml` after the domain is live.
4. If the domain changes, update `_config.yml`, add or update `CNAME`, and
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
- Run `.\scripts\update_site.ps1` to regenerate the local archive pages and rebuild the site.
- For truly hosted essays, create a custom file in `_articles/` instead of relying on the generated archive page.

### Add or update books

- Edit `_data/books.yml`.
- Keep the matching `_books/*.md` page aligned when the title or description changes.
- Replace public retail links with direct author or publisher links when you
  have them.
- Replace any temporary cover source with final official assets.

### Add or update media appearances

- Edit `_data/media.yml`.
- Add interviews, podcasts, mentions, or guest essays once there is a verified
  public source URL.
- Run `.\scripts\update_site.ps1` to regenerate the local media pages and rebuild the site.

### Add or update YouTube archive pages

- Edit `_data/youtube_videos.json` or `_data/youtube_shorts.json`.
- Run `.\scripts\update_site.ps1` so each upload gets a local archive page, a mirrored local thumbnail, and a fresh site build.
- Keep manually authored featured files in `_videos/` for the entries that need stronger custom framing.

## Weekly update command

From the repo root in PowerShell:

```powershell
.\scripts\update_site.ps1
```

Typical weekly workflow:

1. Update `_data/articles.yml`, `_data/youtube_videos.json`, `_data/youtube_shorts.json`, or `_data/media.yml`.
2. Run `.\scripts\update_site.ps1`.
3. Check the result locally with `bundle exec jekyll serve` if needed.
4. Commit and push to `main`.

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
- Search Console property setup if you move to a custom domain
- Final custom domain, when ready
