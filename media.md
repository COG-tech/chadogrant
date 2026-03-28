---
title: Media
description: Verified public profiles, publication hubs, and book listings connected to Chad O. Grant's work.
eyebrow: Profiles, appearances, and public references
body_class: page-body page-media
---
{% assign media_items = site.data.media %}

<section class="content-section media-intro">
  <div class="media-intro__copy">
    <p class="section__label">Public Record</p>
    <h2>A cleaner record of where the work is showing up.</h2>
    <p>
      This page tracks the public references already tied to Chad O. Grant:
      the S.C.O.P.E. Report channel, the Substack publications, and the book
      listings that are live under his name. As interviews, podcasts, and
      outside features accumulate, they should be added here so the site stays
      ahead of the fragmented profile trail that usually builds up across the
      web.
    </p>
  </div>
  <aside class="media-intro__meta" aria-label="Media overview">
    <div class="media-stat">
      <strong>{{ media_items | size }}</strong>
      <span>Verified public references</span>
    </div>
    <div class="media-stat">
      <strong>Profiles and listings</strong>
      <span>Publication hubs, channel profiles, and public book pages</span>
    </div>
    <div class="media-source-note">
      <p>
        Outside interviews and guest appearances should be added here as they
        become publicly available.
      </p>
    </div>
  </aside>
</section>

<section class="content-section">
  <div class="section__heading section__heading--wide">
    <div>
      <p class="section__label">Appearances And References</p>
      <h2>Profiles, publication pages, and source listings</h2>
    </div>
    <p class="section-intro">
      These entries are here to anchor Chad O. Grant to verified public-source
      pages that search engines and readers can actually trace.
    </p>
  </div>
  <div class="stack-list media-list">
    {% for item in media_items %}
      {% include media-row.html item=item %}
    {% endfor %}
  </div>
</section>
