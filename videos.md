---
title: Videos
description: Featured S.C.O.P.E. Report videos by Chad O. Grant covering macro commentary, leverage, markets, and geopolitics.
eyebrow: Video commentary, channel archive, and analysis
body_class: page-body page-videos
---
{% assign featured_videos = site.videos | where: "featured", true | sort: "order" %}
{% assign youtube_videos = site.data.youtube_videos %}
{% assign youtube_shorts = site.data.youtube_shorts %}

<section class="content-section videos-intro">
  <div class="videos-intro__copy">
    <p class="section__label">Channel Hub</p>
    <h2>Macro commentary, market signals, and geopolitical framing in one archive.</h2>
    <p>
      The S.C.O.P.E. Report moves between long-form breakdowns and short-form
      commentary. The featured entries on this site add original framing and
      context. The full archive below now has its own site pages alongside
      YouTube links, so visitors and search engines can trace every upload
      through a first-party archive.
    </p>
    <p class="section-intro">
      To confirm the broader author identity behind the channel, use the
      <a class="text-link" href="{{ '/about/' | relative_url }}">Official Chad O. Grant profile</a>.
    </p>
    <div class="button-row">
      <a class="button button--primary" href="https://www.youtube.com/@Chadogrant/videos" target="_blank" rel="noreferrer">Open full YouTube channel</a>
      <a class="button button--secondary" href="https://www.youtube.com/@Chadogrant/shorts" target="_blank" rel="noreferrer">Browse YouTube shorts</a>
    </div>
  </div>
  <aside class="videos-intro__meta" aria-label="Video overview">
    <div class="video-stat">
      <strong>{{ featured_videos | size }}</strong>
      <span>Featured analysis pages on this site</span>
    </div>
    <div class="video-stat">
      <strong>{{ youtube_videos | size | plus: youtube_shorts | size }}</strong>
      <span>Public YouTube uploads currently linked in the archive</span>
    </div>
    <div class="video-source-note">
      <p>
        Archive rows now have site pages and direct YouTube links, so the full
        channel footprint is crawlable without losing the original source.
      </p>
    </div>
  </aside>
</section>

<section class="content-section">
  <div class="section__heading section__heading--wide">
    <div>
      <p class="section__label">Featured</p>
      <h2>Top videos</h2>
    </div>
    <p class="section-intro">
      These are the videos with the strongest on-site framing, context, and
      internal analysis pages.
    </p>
  </div>
  <div class="card-grid card-grid--three">
    {% for video in featured_videos %}
      {% include video-card.html item=video %}
    {% endfor %}
  </div>
</section>

<section class="content-section">
  <div class="section__heading section__heading--wide">
    <div>
      <p class="section__label">Long-Form Archive</p>
      <h2>Full YouTube video archive</h2>
    </div>
    <p class="section-intro">
      {{ youtube_videos | size }} public long-form videos currently linked from
      the channel, each with a site page, a summary, and a direct YouTube
      action.
    </p>
  </div>
  <div class="archive-list">
    {% for item in youtube_videos %}
      {% include youtube-archive-row.html item=item kind="Video" %}
    {% endfor %}
  </div>
</section>

<section class="content-section">
  <div class="section__heading section__heading--wide">
    <div>
      <p class="section__label">Short-Form Archive</p>
      <h2>Full YouTube shorts archive</h2>
    </div>
    <p class="section-intro">
      {{ youtube_shorts | size }} public shorts currently linked from the
      channel, each with a site page, a summary, and a direct link out to
      YouTube.
    </p>
  </div>
  <div class="archive-list">
    {% for item in youtube_shorts %}
      {% include youtube-archive-row.html item=item kind="Short" %}
    {% endfor %}
  </div>
</section>
