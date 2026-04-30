---
title: Contact Chad O. Grant | Official Website
description: Contact Chad O. Grant about books, media, macro research, S.C.O.P.E. Report, Marathon Macro, Dawn Archives, and related projects.
breadcrumb_label: Contact
last_modified_at: 2026-04-30
---
{% assign contact = site.data.site.contact %}
<section class="content-section prose-block">
  <h2>Get in touch</h2>
  <p>
    Use this page to contact Chad O. Grant regarding books, media, macro
    research, S.C.O.P.E. Report, Marathon Macro, Dawn Archives, and related
    projects.
  </p>
  <p>
    The links below are the live public channels. The email address currently
    points to the public contact path exposed through the Substack feed, and it
    can be swapped for a dedicated business inbox later.
  </p>
</section>

<section class="content-section">
  <h2>Profiles and newsletter</h2>
  {% include social-links.html variant="buttons" %}
</section>

<section class="content-section">
  <div class="contact-card">
    <h2>Static contact form</h2>
    <p>
      The form layout is here so you can wire in Formspree, Basin, or another
      static form service later without redesigning the page.
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
