---
title: Books
description: Books by Chad O. Grant, including Dawn, Dear Son, and The Twin Titans, with public retail links and source notes.
---
<section class="content-section prose-block">
  <h2>Books</h2>
  <p>
    This catalog is built from public retail listings tied to Chad O. Grant.
    Dear Son and Dawn link to live Google Play pages, while The Twin Titans
    currently points to a public Amazon listing until a stronger author-owned
    source is available.
  </p>
</section>

<section class="content-section">
  <div class="card-grid card-grid--three">
    {% for book in site.data.books %}
      {% include book-card.html item=book %}
    {% endfor %}
  </div>
</section>
