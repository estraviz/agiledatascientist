---
layout: page
permalink: /tags/
title: TAGS
comments: false
---

<div id="archives">

{% assign sortedtags = site.tags | sort %}

{% for tag in sortedtags %}
  <span class="nowrapping">
      {% capture tag_name %}{{ tag | first }}{% endcapture %}
      <a href="#{{ tag_name }}" class="highlight categoryblue" style="color:white;">&nbsp;{{ tag_name }}&nbsp;<span class="categorycountcolor">({{ tag | last | size }})</span>&nbsp;</a>&nbsp;
  </span>
{% endfor %}

<hr />

{% for tag in sortedtags %}
  <div class="archive-group">
    {% capture tag_name %}{{ tag | first }}{% endcapture %}

    <div id="{{ tag_name | slugize }}">
    <h3 class="category-head"><i class="fa fa-tag"></i> {{ tag_name }}&nbsp;<a href="#archives"><i class="small-size active">&#8673;</i></a></h3>

    {% for post in site.tags[tag_name] %}

      <h4 class="inlinedisplay">
        <article class="archive-item">
          <a href="{{ site.url }}{{ post.url }}" title="{{ post.title }}">{{ post.title }}</a> 
          <span class="dateline">{{ post.date | date: "%B %d, %Y" }}</span>
        </article>
      </h4>

    {% endfor %}

    <!--<a href="#archives"><i class="small-size active">back to top&#8673;</i></a>-->

    </div>
    
  </div>
{% endfor %}

</div>