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
        This page is designed to help readers, editors, and search engines
        understand that Chad O. Grant is the person behind the books, essays,
        videos, and macro commentary collected across this site.
      </p>
    </aside>
  </div>
</section>

<section class="content-section prose-block">
  <h2>Longer story / background</h2>
  <p>{{ site_data.about.long_story }}</p>
  <p>
    TODO: replace or expand this section with verified background details,
    publication history, location, credentials, and any biographical notes you
    want associated with Chad O. Grant in public search results.
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
    Replace the placeholders below with the official public profiles for Chad O.
    Grant before launch.
  </p>
  {% include social-links.html variant="buttons" %}
</section>
