---
title: Media
description: Verified public profiles, publication hubs, and book listings connected to Chad O. Grant's work.
---
<section class="content-section prose-block">
  <h2>Media and appearances</h2>
  <p>
    No verified third-party interviews, podcasts, or guest features were found
    in public search during this update. Until that changes, this page
    documents the verified public platform footprint tied to Chad O. Grant:
    official profiles, publication hubs, and public book listings.
  </p>
</section>

<section class="content-section">
  <div class="stack-list">
    {% for item in site.data.media %}
      {% include media-row.html item=item %}
    {% endfor %}
  </div>
</section>
