---
title: Media
description: Interviews, appearances, mentions, podcasts, and guest features connected to Chad O. Grant's work.
---
<section class="content-section prose-block">
  <h2>Media and appearances</h2>
  <p>
    Chad O. Grant's media page is built for interviews, guest appearances,
    podcast conversations, and references tied to his writing and macro
    commentary. Replace the placeholder items below with verified appearance
    details before launch.
  </p>
</section>

<section class="content-section">
  <div class="stack-list">
    {% for item in site.data.media %}
      {% include media-row.html item=item %}
    {% endfor %}
  </div>
</section>
