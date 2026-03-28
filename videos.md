---
title: Videos
description: A curated video hub for Chad O. Grant's macro commentary, briefings, and longer-form video analysis.
---
{% assign featured_videos = site.videos | where: "featured", true | sort: "order" %}
{% assign archive_videos = site.videos | sort: "order" %}
<section class="content-section prose-block">
  <h2>Featured video hub</h2>
  <p>
    This page is designed as an editorial hub, not a raw dump. Each featured
    entry should eventually carry a verified YouTube title, a direct embed, an
    original summary, and clear context about why the video matters.
  </p>
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
        <span class="archive-list__tag">{{ video.topic }}</span>
      </article>
    {% endfor %}
  </div>
</section>
