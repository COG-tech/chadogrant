---
title: Articles
description: An editorial archive of Chad O. Grant's Substack writing, with original summaries and direct links to full articles.
---
<section class="content-section prose-block">
  <h2>Article hub</h2>
  <p>
    This archive is designed around real Substack posts published under Chad O.
    Grant's name. It supports discoverability without copying full articles:
    each entry adds an original summary, a topic lens, and a clean path to the
    complete piece.
  </p>
</section>

<section class="content-section">
  <h2>Featured and linked articles</h2>
  <div class="card-grid card-grid--three">
    {% for article in site.data.articles %}
      {% include article-card.html item=article %}
    {% endfor %}
  </div>
</section>

<section class="content-section">
  <h2>Hosted article template</h2>
  <div class="archive-list">
    {% for article in site.articles %}
      <article class="archive-list__item">
        <div>
          <h3><a href="{{ article.url | relative_url }}">{{ article.title }}</a></h3>
          <p>{{ article.description }}</p>
        </div>
        <a class="text-link" href="{{ article.url | relative_url }}">Open template</a>
      </article>
    {% endfor %}
  </div>
</section>
