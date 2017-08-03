---
layout: page
permalink: /categories/
title: CATEGORIES
comments: false
---

<div id="archives">

{% assign sortedcats = site.categories | sort %}

{% for category in sortedcats %}
  <span class="nowrapping">
      {% capture category_name %}{{ category | first }}{% endcapture %}
      <a href="#{{ category_name }}" class="highlight categoryblue" style="color:white;">&nbsp;{{ category_name }}&nbsp;<span class="categorycountcolor">({{ category | last | size }})</span>&nbsp;</a>&nbsp;
  </span>
{% endfor %}

<hr />

{% for category in sortedcats %}
  <div class="archive-group">
    {% capture category_name %}{{ category | first }}{% endcapture %}

    <div id="{{ category_name | slugize }}">
    <h3 class="category-head"><i class="fa fa-folder-open-o"></i> {{ category_name }} <a href="#archives"><i class="small-size active">&#8673;</i></a></h3>

    {% for post in site.categories[category_name] %}

      <h4 class="inlinedisplay">
        <article class="archive-item">
          <a href="{{ site.url }}{{ post.url }}" title="{{ post.title }}">{{ post.title }}</a> 
          <span class="dateline">{{ post.date | date: "%B %d, %Y" }}</span>
        </article>
      </h4>
      
      {% assign tagcount = post.tags | size %}
      {% if tagcount > 0 %}
      <span class="medium-size"><small><i class="fa fa-tags"></i>&nbsp;
        {% for tag in post.tags %}
          {{ tag }}&nbsp;·
        {% endfor %}</small>
      </span>
      <br />
      {% endif %}
      <br />
    {% endfor %}

    </div>
    
  </div>
{% endfor %}

</div>