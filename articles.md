---
title: Articles
description: An editorial archive of Chad O. Grant's writing across S.C.O.P.E. Report and Dawn Archives, with summaries and direct links to the original posts.
eyebrow: Essays, notes, fiction, and analysis
body_class: page-body page-articles
---
{% assign articles = site.data.articles %}
{% assign scope_articles = articles | where: "publication", "S.C.O.P.E. Report" %}
{% assign dawn_articles = articles | where: "publication", "Dawn Archives" %}
<section class="article-intro">
  <div class="article-intro__copy">
    <p class="section__label">Editorial archive</p>
    <h2>A sharper way to browse the writing</h2>
    <p>
      This archive now spans two public writing streams: S.C.O.P.E. Report for
      macro and geopolitical commentary, and Dawn Archives for fiction tied to
      DAWN: A Whisper of Destiny. These are first-party archive pages with
      summaries and context, not copies. The goal is to make the site useful
      on its own while still sending readers to the original publication
      source.
    </p>
  </div>
  <aside class="article-intro__meta">
    <div class="article-stat">
      <strong>{{ articles | size }}</strong>
      <span>linked pieces</span>
    </div>
    <div class="article-stat">
      <strong>2</strong>
      <span>publication homes</span>
    </div>
    <div class="button-row">
      <a class="button button--secondary" href="https://chadogrant.substack.com/archive" target="_blank" rel="noreferrer">Open S.C.O.P.E. Report</a>
      <a class="button button--secondary" href="https://dawnnexus.substack.com/archive" target="_blank" rel="noreferrer">Open Dawn Archives</a>
    </div>
  </aside>
</section>

<section class="content-section">
  <div class="section__heading section__heading--wide">
    <div>
      <p class="section__label">S.C.O.P.E. Report</p>
      <h2>Macro, markets, and geopolitical commentary</h2>
    </div>
    <p class="section-intro">
      {{ scope_articles | size }} published pieces currently linked from the
      macro and commentary publication, each with its own site page.
    </p>
  </div>
  <div class="article-grid">
    {% for article in scope_articles %}
      {% include article-card.html item=article %}
    {% endfor %}
  </div>
</section>

<section class="content-section">
  <div class="section__heading section__heading--wide">
    <div>
      <p class="section__label">Dawn Archives</p>
      <h2>Fiction chapters, lore, and story-world writing</h2>
    </div>
    <p class="section-intro">
      {{ dawn_articles | size }} public Dawn entries currently linked from the
      fiction publication tied to Chad O. Grant, each with its own site page.
    </p>
  </div>
  <div class="article-grid">
    {% for article in dawn_articles %}
      {% include article-card.html item=article %}
    {% endfor %}
  </div>
</section>
