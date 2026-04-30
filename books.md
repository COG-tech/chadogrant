---
title: Books by Chad O. Grant | Dawn, Dear Son, and The Twin Titans
description: Books by Chad O. Grant, including Dawn, Dear Son, and The Twin Titans, with direct links to the on-site book pages and public listings.
eyebrow: Books, macro commentary, and long-form work
body_class: page-body page-books
breadcrumb_label: Books by Chad O. Grant
last_modified_at: 2026-04-30
---
{% assign books = site.data.books %}

<section class="content-section books-intro">
  <div class="books-intro__copy">
    <p class="section__label">Bookshelf</p>
    <h2>Three different lanes, one authorial throughline.</h2>
    <p>
      Chad O. Grant's books move across fiction, family, and geopolitical
      analysis, but the work is held together by the same instinct: looking at
      people, systems, and turning points with a long horizon in mind. This
      page gathers the publicly listed titles currently tied to his name, gives
      each book a real on-site overview page, and points readers to the
      strongest available public source for each one.
    </p>
    <p class="section-intro">
      For background on the author behind these titles, see
      <a class="text-link" href="{{ '/about/' | relative_url }}">About Chad O. Grant</a>.
    </p>
  </div>
  <aside class="books-intro__meta" aria-label="Books overview">
    <div class="book-stat">
      <strong>{{ books | size }}</strong>
      <span>Publicly listed titles</span>
    </div>
    <div class="book-stat">
      <strong>Fiction to macro</strong>
      <span>From speculative fiction to legacy writing and geopolitical analysis</span>
    </div>
    <div class="book-source-note">
      <p>
        Retail links are used only where an author-controlled page is not yet
        available.
      </p>
    </div>
  </aside>
</section>

<section class="content-section">
  <div class="section__heading section__heading--wide">
    <div>
      <p class="section__label">Current Titles</p>
      <h2>Published books and public listings</h2>
    </div>
    <p class="section-intro">
      Each entry includes an on-site overview, an original summary, a source
      note, and direct links to the best public listing currently available.
    </p>
  </div>
  <div class="books-grid">
    {% for book in books %}
      {% include book-card.html item=book %}
    {% endfor %}
  </div>
</section>
