---
layout: post
title: "SOLID Object-Oriented Design"
description: "Reflexionando sobre los principios SOLID"
category: Software Design
tags: [OOP, Ruby, Sandi Metz, SOLID]
comments: true
---

He estado comentando con *my colleague* [**@xala3pa**](https://twitter.com/xala3pa){:target="_blank"} que iba a intentar ver una charla más o menos técnica al día, normalmente relacionada con el desarrollo de software y/o temática de Data Science. Seguramente no serán charlas de extrema profundidad, que me requieran bucear en complejidades del código, dado que el rato que tendré para esto a última hora del día, cuando uno está ya está un cansado. Pero sí que creo que puede ser un momento aprovechable para escuchar a personas e ideas *inspirational* para mí.

En esta línea va la charla de hoy, de [**Sandi Metz**](https://www.sandimetz.com/){:target="_blank"}, autora del libro [99 Bottles of OOP](https://www.sandimetz.com/99bottles){:target="_blank"} y recomendada por **@xala3pa**. **Sandi** comienza hablando de la rigidez + fragilidad + inmovilizo + viscosidad de nuestras aplicaciones. Es muy posible que una aplicación que desarrollemos hoy corra el riesgo de “romperse” mañana con cualquier pequeño cambio, con cualesquiera dependencias existentes entre nuestros componentes. Por ello, nos habla del diseño orientado a objetos y los principios [SOLID](http://butunclebob.com/ArticleS.UncleBob.PrinciplesOfOod){:target="_blank"}. Como el *goal* de este blog pretende ayudar(me) (a mí en primera instancia, y al que/la que le sirva de inspiración), reproduzco aquí unos breves apuntes sobre los conceptos que forman el acrónimo SOLID, tal y como los he copiado en mi [Evernote](https://www.evernote.com/){:target="_blank"} durante la visualización del vídeo:

- **S** - *Single responsibility* - only one reason for a class to change.
- **O** - *Open/closed* - module should be open for extension but closed for modification.
- **L** - *Liskov substitution* - subclasses should be substitutable for their base classes.
- **I** - *Interface segregation* - many client specific interfaces better than a general purpose one.
- **D** - *Dependency inversion* - depend upon abstractions, not upon concretions.

Todos los principios anteriores giran entorno a gestionar convenientemente las dependencias que podemos ocasionar en nuestra aplicación.

Aquí el vídeo:

<iframe width="420" height="315" src="https://www.youtube.com/embed/v-2yFMzxqwU" frameborder="0" allowfullscreen>&nbsp;</iframe>
<p></p>
Por último, me quedo con esta frase de **Sandi**:

<blockquote>
If your project succeeds it will continue to cost you money.
</blockquote>

Saludos!