---
layout: page
permalink: /tags/
title: TAGS
comments: false
---

<div id="archives">

  <div class="notice preferredbackgroundcolor center">
  {% assign sortedtags = site.tags | sort %}·

  {% for tag in sortedtags %}
    <span class="nowrapping">
        {% capture tag_name %}{{ tag | first }}{% endcapture %}
        <a href="#{{ tag_name }}" class="small-size"><span class="glossary">{{ tag_name }}</span>&nbsp;<span class="active">({{ tag | last | size }})</span>&nbsp;</a>·
    </span>
  {% endfor %}
  </div>

  {% for tag in sortedtags %}
    <div class="archive-group">
      {% capture tag_name %}{{ tag | first }}{% endcapture %}

      <div id="{{ tag_name | slugize }}">
      <h3 class="category-head">{{ tag_name }}&nbsp;<a href="#archives"><i class="small-size active">&#8673;</i></a></h3>

      {% for post in site.tags[tag_name] %}

        <span class="inlinedisplay">
          <article class="archive-item">
            <a href="{{ site.url }}{{ post.url }}" title="{{ post.title }}">&#8227; {{ post.title }}</a> 
            <span class="dateline">{{ post.date | date: "%B %d, %Y" }}</span>
          </article>
        </span>

      {% endfor %}
  &nbsp;
      <!--<a href="#archives"><i class="small-size active">back to top&#8673;</i></a>-->

      </div>
      
    </div>
  {% endfor %}

</div>