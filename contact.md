---
title: Contact
description: Contact Chad O. Grant for interviews, editorial opportunities, speaking, and collaboration.
---
{% assign contact = site.data.site.contact %}
<section class="content-section prose-block">
  <h2>Get in touch</h2>
  <p>{{ contact.intro }}</p>
</section>

<section class="content-section">
  <h2>Profiles and newsletter</h2>
  {% include social-links.html variant="buttons" %}
</section>

<section class="content-section">
  <div class="contact-card">
    <h2>Contact form placeholder</h2>
    <p>
      This form is intentionally static for GitHub Pages. Connect Formspree,
      Basin, or another static form service when you are ready to receive
      submissions.
    </p>
    <form class="contact-form" action="" method="post">
      <label>
        Name
        <input type="text" name="name" placeholder="Your name" disabled>
      </label>
      <label>
        Email
        <input type="email" name="email" placeholder="you@example.com" disabled>
      </label>
      <label>
        Message
        <textarea name="message" rows="6" placeholder="Tell me about your inquiry" disabled></textarea>
      </label>
      <button class="button button--primary" type="submit" disabled>Connect form service first</button>
    </form>
  </div>
</section>
