---
layout: page
permalink: /categories/
title: Categories
comments: false
---

<div id="archives">

{% assign sortedcats = site.categories | sort %}

<small>
{% for category in sortedcats %}
    {% capture category_name %}{{ category | first }}{% endcapture %}
    <a href="#{{ category_name }}"><i class="fa fa-folder-o small-size highlight"> {{ category_name }}</i>&nbsp;&nbsp;</a>
{% endfor %}
</small>

<hr />

{% for category in sortedcats %}
  <div class="archive-group">
    {% capture category_name %}{{ category | first }}{% endcapture %}

    <div id="{{ category_name | slugize }}">
    <h3 class="category-head">{{ category_name }}</h3>

    {% for post in site.categories[category_name] %}

      <article class="archive-item">
        <a href="{{ site.url }}{{ post.url }}" title="{{ post.title }}">{{ post.title }}</a> 
        <span class="dateline">{{ post.date | date: "%B %d, %Y" }}</span>
      </article>

      <span class="medium-size"><small><i></i></small>
        {% for tag in post.tags %}
          <small><i class="fa fa-tag"> <i class="">{{ tag }}</i></i>&nbsp;&nbsp;</small>
        {% endfor %}<small></small>
      </span>
      <br /><br />

    {% endfor %}

    <a href="#archives"><i class="small-size active">back to top&#8673;</i></a>

    <br />
    </div>
    
  </div>
{% endfor %}

</div>