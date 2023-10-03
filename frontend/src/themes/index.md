---
layout: layouts/themes.njk
title: Themes
feature:
  image: ""
  title: The image title
  description: ""
eleventyNavigation:
  key: Themes
  order: 5
---

{% for theme in collections.theme %}

- [{{ theme.data.title }}]({{ theme.url}})

{% endfor %}
