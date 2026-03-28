---
title: Articles
description: An editorial archive of Chad O. Grant's Substack writing, with original summaries and direct links to full articles.
eyebrow: Essays, notes, and analysis
body_class: page-body page-articles
---
{% assign articles = site.data.articles %}
<section class="article-intro">
  <div class="article-intro__copy">
    <p class="section__label">Editorial archive</p>
    <h2>A sharper way to browse the writing</h2>
    <p>
      These are summaries of published pieces, not copies. The goal is to give
      each essay enough framing to make the archive worth browsing on its own,
      then send readers to the original source for the full argument.
    </p>
  </div>
  <aside class="article-intro__meta">
    <div class="article-stat">
      <strong>{{ articles | size }}</strong>
      <span>linked essays</span>
    </div>
    <div class="article-stat">
      <strong>Substack</strong>
      <span>primary publishing home</span>
    </div>
    <a class="button button--secondary" href="https://chadogrant.substack.com/archive" target="_blank" rel="noreferrer">Open Substack archive</a>
  </aside>
</section>

<section class="content-section">
  <div class="section__heading section__heading--wide">
    <div>
      <p class="section__label">Recent Writing</p>
      <h2>Published essays and linked notes</h2>
    </div>
    <p class="section-intro">
      A cleaner archive of macro, markets, and geopolitical commentary.
    </p>
  </div>
  <div class="article-grid">
    {% for article in articles %}
      {% include article-card.html item=article %}
    {% endfor %}
  </div>
</section>

<section class="content-section article-note">
  <p>
    Selected essays may eventually be hosted here directly. Until then, the
    archive stays focused on the pieces already published under Chad O. Grant's
    name.
  </p>
</section>
