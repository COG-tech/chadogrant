---
title: Books
description: Books by Chad O. Grant, including Dawn, Dear Son, and The Twin Titans, with public retail links and source notes.
---
<section class="content-section prose-block">
  <h2>Books</h2>
  <p>
    This page brings together the public book listings currently tied to Chad
    O. Grant. Where an author-owned page is not available yet, the site links
    to the strongest public retail source.
  </p>
</section>

<section class="content-section">
  <div class="card-grid card-grid--three">
    {% for book in site.data.books %}
      {% include book-card.html item=book %}
    {% endfor %}
  </div>
</section>
