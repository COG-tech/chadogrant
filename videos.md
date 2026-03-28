---
title: Videos
description: Featured S.C.O.P.E. Report videos by Chad O. Grant covering macro commentary, leverage, markets, and geopolitics.
---
{% assign featured_videos = site.videos | where: "featured", true | sort: "order" %}
{% assign archive_videos = site.videos | sort: "order" %}
{% assign youtube_videos = site.data.youtube_videos %}
{% assign youtube_shorts = site.data.youtube_shorts %}
<section class="content-section prose-block">
  <h2>Featured video hub</h2>
  <p>
    The channel moves between longer breakdowns and shorter bursts of
    commentary. The featured pages on this site add context and framing; the
    archive sections below link straight into the full public YouTube output.
  </p>
  <div class="button-row">
    <a class="button button--primary" href="https://www.youtube.com/@Chadogrant/videos" target="_blank" rel="noreferrer">Open full YouTube channel</a>
    <a class="button button--secondary" href="https://www.youtube.com/@Chadogrant/shorts" target="_blank" rel="noreferrer">Browse YouTube shorts</a>
  </div>
</section>

<section class="content-section">
  <h2>Top videos</h2>
  <div class="card-grid card-grid--three">
    {% for video in featured_videos %}
      {% include video-card.html item=video %}
    {% endfor %}
  </div>
</section>

<section class="content-section">
  <h2>Archive</h2>
  <div class="archive-list">
    {% for video in archive_videos %}
      <article class="archive-list__item">
        <div>
          <h3><a href="{{ video.url | relative_url }}">{{ video.title }}</a></h3>
          <p>{{ video.summary }}</p>
        </div>
        <span class="archive-list__tag">{{ video.published_label | default: video.topic }}</span>
      </article>
    {% endfor %}
  </div>
</section>

<section class="content-section">
  <h2>Full YouTube Video Archive</h2>
  <p class="section-intro">{{ youtube_videos | size }} public long-form videos currently linked from the channel.</p>
  <div class="archive-list">
    {% for item in youtube_videos %}
      {% include youtube-archive-row.html item=item kind="Video" %}
    {% endfor %}
  </div>
</section>

<section class="content-section">
  <h2>Full YouTube Shorts Archive</h2>
  <p class="section-intro">{{ youtube_shorts | size }} public shorts currently linked from the channel.</p>
  <div class="archive-list">
    {% for item in youtube_shorts %}
      {% include youtube-archive-row.html item=item kind="Short" %}
    {% endfor %}
  </div>
</section>
