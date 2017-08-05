---
layout: post
title: "SOLID Object-Oriented Design"
description: "Reflecting on SOLID principles"
category: Software Design
tags: [OOP, Ruby, Sandi Metz, SOLID]
comments: true
---

I have been commenting with *my colleague* [**@xala3pa**](https://twitter.com/xala3pa){:target="_blank"} that I will try to see a more or less technical talk every day, usually related to Software Development, in general, and/or Data Science, in particular. Surely, there will be talks of greater depth, which will require me to dive into the complexities of the code. I do believe that it can be a good use of my time to listen to *inspirational* people and ideas.

In this line goes the talk today, by [**Sandi Metz**](https://www.sandimetz.com/){:target="_blank"}, the author of the book [99 Bottles of OOP](https://www.sandimetz.com/99bottles){:target="_blank"} and recommended by **@xala3pa**. **Sandi** begins to talk about rigidity + brittleness + immobilize + viscosity concepts applied to our applications. It is very possible that an application that we are developing today may run the risk of "breaking" tomorrow with any small change, because of any dependencies among our components. Therefore, she talks to us about object-oriented design and [SOLID](http://butunclebob.com/ArticleS.UncleBob.PrinciplesOfOod){:target="_blank"} principles. As the *goal* of this blog aims to help (me/you) (at least me, in the first instance, and anyone to whom it can inspire, I'm reproducing here a few brief notes on the concepts that compose the SOLID acronym, just as I have copied them in my [Evernote](https://www.evernote.com/){:target="_blank"} while watching the video:

- **S** - *Single responsibility* - only one reason for a class to change.
- **O** - *Open/closed* - module should be open for extension but closed for modification.
- **L** - *Liskov substitution* - subclasses should be substitutable for their base classes.
- **I** - *Interface segregation* - many client specific interfaces better than a general purpose one.
- **D** - *Dependency inversion* - depend upon abstractions, not upon concretions.

All the above principles revolve around managing properly the dependencies that we can cause in our application.

Now, the video:

<iframe width="420" height="315" src="https://www.youtube.com/embed/v-2yFMzxqwU" frameborder="0" allowfullscreen>&nbsp;</iframe>
<p></p>
Finally, I will take this sentence from **Sandi**:

>If your project succeeds it will continue to cost you money.

*Regards!*