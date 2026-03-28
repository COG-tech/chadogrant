---
title: Media
description: Verified public profiles, publication hubs, and book listings connected to Chad O. Grant's work.
---
<section class="content-section prose-block">
  <h2>Media and appearances</h2>
  <p>
    This page will grow as interviews, podcast appearances, and outside
    features accumulate. For now, it anchors the public trail already visible
    online: the channel, the publication, and the book pages.
  </p>
</section>

<section class="content-section">
  <div class="stack-list">
    {% for item in site.data.media %}
      {% include media-row.html item=item %}
    {% endfor %}
  </div>
</section>
