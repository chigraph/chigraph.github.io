---
layout: page
title: "Documentation"
date: 2017-6-23 15:24:20 -0600
permalink: /documentation/
---

Documentation for chigraph!

Technical Documentation:
* [Compiling from source (Linux)](/documentation/building-linux/)
* [Compiling from source (Windows)](/documentation/building-windows/)
* [Compiling from source (macOS)](/documentation/building-macos/)
* [Chigraph CMake options](/documentation/cmake-flags/)

List of all documentation:

{% for page in site.pages %}
  {% for pc in page.categories %}
    {% if pc == 'documentation' %}
* [{{ page.title }}]({{ page.url }})
    {% endif %}
  {% endfor %}
{% endfor %}
