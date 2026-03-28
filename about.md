---
title: About
description: Learn more about Chad O. Grant, his writing, macro analysis, books, and the themes that run through his public work.
schema_type: ProfilePage
---
{% assign site_data = site.data.site %}
<section class="content-section">
  <div class="two-column">
    <div class="prose-block">
      <h2>Professional bio</h2>
      <p>{{ site_data.about.short_bio }}</p>
      <p>{{ site_data.about.long_story_intro }}</p>
    </div>
    <aside class="summary-panel">
      <h2>Profile summary</h2>
      <p>{{ site_data.tagline }}</p>
      <p>
        If you know Chad O. Grant from S.C.O.P.E. Report, Dawn Archives,
        Substack, or the books, this page is meant to show how that body of work
        fits together.
      </p>
    </aside>
  </div>
</section>

<section class="content-section prose-block">
  <h2>Longer story / background</h2>
  <p>{{ site_data.about.long_story }}</p>
  <p>
    Public author copy for Dawn describes Chad O. Grant as a writer interested
    in power, incentives, and the choices people make when the rules change.
    That feels like the clearest bridge between the books and the macro work.
  </p>
  <p>
    Dawn Archives makes that bridge more visible. It gives the fiction work its
    own publication trail, with chapters and lore notes tied back to Chad O.
    Grant rather than leaving the novel side of the catalog disconnected from
    the broader author profile.
  </p>
</section>

<section class="content-section">
  <div class="two-column">
    <div class="prose-block">
      <h2>What I write about</h2>
      <ul class="clean-list">
        {% for item in site_data.about.what_i_write_about %}
          <li>{{ item }}</li>
        {% endfor %}
      </ul>
    </div>
    <div class="prose-block">
      <h2>Where to find my work</h2>
      <ul class="clean-list">
        {% for item in site_data.about.work_locations %}
          <li>{{ item }}</li>
        {% endfor %}
      </ul>
    </div>
  </div>
</section>

<section class="content-section">
  <h2>Official links</h2>
  <p>
    These are the main public channels currently tied to Chad O. Grant's work.
  </p>
  {% include social-links.html variant="buttons" %}
</section>
