# Chad O. Grant Personal Website

A GitHub Pages-ready Jekyll site for Chad O. Grant's writing, books, videos,
and macro commentary.

## Stack

- Jekyll
- Native GitHub Pages deployment from the repository root
- Data-driven content in YAML and Markdown
- Plain CSS and vanilla JavaScript

## File structure

- `_data/site.yml`: site-wide copy, navigation, SEO defaults, and CTA content
- `_data/social.yml`: official profile links and placeholders
- `_data/books.yml`: books, covers, and placeholder commerce links
- `_data/articles.yml`: external article cards and summaries
- `_data/media.yml`: interviews, appearances, and mentions
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
4. Open `http://127.0.0.1:4000`.

## GitHub Pages deployment

This repo is set up for the simplest GitHub Pages path: deploy directly from the
repository root.

1. Push the site to the default branch.
2. In GitHub, open `Settings -> Pages`.
3. Set `Source` to `Deploy from a branch`.
4. Choose the default branch and `/ (root)`.
5. Save.

## Custom domain setup

1. Replace the placeholder value in `CNAME`.
2. Replace `url` in `_config.yml` with the final production domain.
3. In GitHub Pages settings, set the same custom domain.
4. Configure DNS with your registrar.
5. Wait for certificate provisioning.

If you are not ready for a custom domain yet, remove `CNAME` before the first
production deploy.

## Search Console and verification

1. Replace `google_site_verification` in `_data/site.yml` with the live code.
2. Submit `https://YOUR-DOMAIN/sitemap.xml` to Search Console after launch.
3. If the domain changes, update `_config.yml`, `CNAME`, and resubmit the sitemap.

## Updating content

### Add or update videos

- Edit the Markdown files in `_videos/`.
- Add the YouTube ID, summary, why-it-matters copy, topic, and thumbnail.
- Set `featured: true` for videos that should appear on the homepage.

### Add or update article links

- Edit `_data/articles.yml`.
- Add the real title, date, topic tag, original summary, and external URL.
- For hosted essays, create a new file in `_articles/`.

### Add or update books

- Edit `_data/books.yml`.
- Replace placeholder descriptions, covers, and buy links.

### Add or update media appearances

- Edit `_data/media.yml`.
- Add the date, outlet, title, summary, and URL.

### Add official profile links

- Edit `_data/social.yml`.
- Replace every placeholder with the verified official URL.

## Launch checklist

- Replace the placeholder domain in `_config.yml` and `CNAME`.
- Replace placeholder social URLs in `_data/social.yml`.
- Add verified YouTube IDs to the featured video pages.
- Replace placeholder article, media, and book copy where needed.
- Add the final professional email address.
- Review every placeholder badge and remove it before launch.
