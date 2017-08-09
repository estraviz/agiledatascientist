---
layout: page
permalink: /categories/
title: CATEGORIES
comments: false
---

<div id="archives">

  <div class="notice preferredbackgroundcolor center">
  {% assign sortedcats = site.categories | sort %}·

  {% for category in sortedcats %}
    <span class="nowrapping">
        {% capture category_name %}{{ category | first }}{% endcapture %}
        <a href="#{{ category_name }}" class="small-size"><span class="glossary">{{ category_name }}</span>&nbsp;<span class="active">({{ category | last | size }})</span>&nbsp;</a>·
    </span>
  {% endfor %}
  </div>

  {% for category in sortedcats %}
    <div class="archive-group">
      {% capture category_name %}{{ category | first }}{% endcapture %}

      <div id="{{ category_name | slugize }}">
      <h3 class="category-head">{{ category_name }}</h3>

      {% for post in site.categories[category_name] %}

        <span class="inlinedisplay">
          <article class="archive-item">
            <a href="{{ site.url }}{{ post.url }}" title="{{ post.title }}">&#8227; {{ post.title }}</a> 
            <span class="readingtimecolor"><small><i class="nowrapping">({{ post.date | date: "%B %d, %Y" }})</i></small></span>
          </article>
        </span>

      {% endfor %}
  &nbsp;
      </div>
      
    </div>
  {% endfor %}

</div>