---
layout: page
title: "Documentation"
date: 2017-6-23 15:24:20 -0600
permalink: /documentation/
---

Documentation for chigraph!

<ul>
  {% for page in site.pages %}
    {% for pc in page.categories %}
      {% if pc == 'documentation' %}
        <li><a href="{{ page.url }}">{{ page.title }}</a></li>
      {% endif %}   <!-- cat-match-p -->
    {% endfor %}  <!-- page-category -->
  {% endfor %}  <!-- page -->
</ul>


