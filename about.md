---
title: About
description: Official Chad O. Grant profile page, including the identity signals and public work tied to Chad O Grant and Chad Grant.
schema_type: ProfilePage
image: /assets/img/chad-o-grant-headshot.jpg
image_alt: Portrait of Chad O. Grant
---
{% assign site_data = site.data.site %}
<section class="content-section">
  <div class="two-column about-identity">
    <aside class="summary-panel portrait-card">
      <img
        class="portrait-card__image"
        src="{{ site_data.person_image | relative_url }}"
        alt="{{ site_data.person_image_alt }}"
        loading="eager"
        decoding="async"
        width="600"
        height="600"
      >
      <p class="status-chip status-chip--subtle">Official portrait</p>
      <p class="portrait-card__caption">{{ site_data.person_image_caption }}</p>
    </aside>
    <div class="prose-block">
      <h2>Official identity</h2>
      <p>{{ site_data.about.official_identity }}</p>
      <p>
        If you are trying to verify the author behind S.C.O.P.E. Report, Dawn
        Archives, the books, and the wider public media trail, this is the
        official Chad O. Grant profile page.
      </p>
      <div class="button-row">
        <a class="button button--secondary" href="{{ '/media/' | relative_url }}">Verified public references</a>
        <a class="button button--ghost" href="{{ '/videos/' | relative_url }}">S.C.O.P.E. Report videos</a>
      </div>
    </div>
  </div>
</section>

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
    For the clearest identity hub, keep pointing back to this
    official Chad O. Grant profile.
  </p>
  {% include social-links.html variant="buttons" %}
</section>
