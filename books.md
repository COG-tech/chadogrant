---
title: Books
description: Books by Chad O. Grant, presented with clear summaries, placeholder covers, and ready-to-update purchase links.
---
<section class="content-section prose-block">
  <h2>Books</h2>
  <p>
    This page is designed to present Chad O. Grant's books as a credible,
    editorial catalog. Replace each placeholder cover, description, and buying
    link with the final verified assets before launch.
  </p>
</section>

<section class="content-section">
  <div class="card-grid card-grid--three">
    {% for book in site.data.books %}
      {% include book-card.html item=book %}
    {% endfor %}
  </div>
</section>
