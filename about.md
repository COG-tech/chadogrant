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
        This page ties the same identity across S.C.O.P.E. Report on YouTube,
        the Chad O. Grant Substack archive, public book listings, and future
        media references so search engines can understand one consistent public
        profile.
      </p>
    </aside>
  </div>
</section>

<section class="content-section prose-block">
  <h2>Longer story / background</h2>
  <p>{{ site_data.about.long_story }}</p>
  <p>
    Public source material for Dawn describes Chad O. Grant as a writer focused
    on power, incentives, and what happens when systems come under strain. The
    macro work applies that same attention to markets, institutions, and the
    shifting balance of power across countries and sectors.
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
    The links below are verified public profiles and distribution channels
    currently associated with Chad O. Grant.
  </p>
  {% include social-links.html variant="buttons" %}
</section>
