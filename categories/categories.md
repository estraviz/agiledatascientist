---
layout: page
permalink: /categories/
title: CATEGORIES
comments: false
---

<div id="archives">

{% assign sortedcats = site.categories | sort %}

{% for category in sortedcats %}
    {% capture category_name %}{{ category | first }}{% endcapture %}
    <a href="#{{ category_name }}" class="highlight">&nbsp;{{ category_name }}&nbsp;</a>&nbsp;
{% endfor %}

<hr />

{% for category in sortedcats %}
  <div class="archive-group">
    {% capture category_name %}{{ category | first }}{% endcapture %}

    <div id="{{ category_name | slugize }}">
    <h3 class="category-head"><i class="fa fa-folder-open-o"></i> {{ category_name }}</h3>

    {% for post in site.categories[category_name] %}

      <h4 style="display:inline;">
        <article class="archive-item">
          <a href="{{ site.url }}{{ post.url }}" title="{{ post.title }}">{{ post.title }}</a> 
          <span class="dateline">{{ post.date | date: "%B %d, %Y" }}</span>
        </article>
      </h4>

      <span class="medium-size"><small><i class="fa fa-tags"></i>&nbsp;
        {% for tag in post.tags %}
          {{ tag }}&nbsp;·
        {% endfor %}</small>
      </span>
      <br /><br />

    {% endfor %}

    <a href="#archives"><i class="small-size active">back to top&#8673;</i></a>

    <br /><br />
    </div>
    
  </div>
{% endfor %}

</div>