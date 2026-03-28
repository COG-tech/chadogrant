---
title: Videos
description: Featured S.C.O.P.E. Report videos by Chad O. Grant covering macro commentary, leverage, markets, and geopolitics.
---
{% assign featured_videos = site.videos | where: "featured", true | sort: "order" %}
{% assign archive_videos = site.videos | sort: "order" %}
<section class="content-section prose-block">
  <h2>Featured video hub</h2>
  <p>
    This page is built around live entries from Chad O. Grant's public YouTube
    footprint. The goal is not to dump embeds, but to frame the core argument,
    connect the topic to the wider macro thesis, and make the video archive
    legible to both readers and search engines.
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
        <span class="archive-list__tag">{{ video.published_label | default: video.topic }}</span>
      </article>
    {% endfor %}
  </div>
</section>
