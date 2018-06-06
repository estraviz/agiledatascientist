---
layout: post
title: "Microservices, a very brief introduction"
description: "An introductory talk about microservices, by Martin Fowler"
category: Software Design
comments: true
tags: [Microservices, GOTO, ThoughtWorks, Martin Fowler]
date: 2018-06-07T00:40:00+02:00
---

Nowadays everybody talks about [microservices](https://en.wikipedia.org/wiki/Microservices){:target="_blank"} and microservices architecture in software development. But this is not a new concept and has been around in the last years. Well, everybody talks about them but it doesn't mean everybody has been able to refactor their platform in this direction, although might be willing to. 

As an introduction to the microservice approach, I recommend this video from [Martin Fowler](https://martinfowler.com/){:target="_blank"}, a british software developer [^1] quite popular and author, among others, of books such as [Refactoring: Improving the Design of Existing Code](https://www.amazon.com/Refactoring-Improving-Design-Existing-Code/dp/0201485672/){:target="_blank"} or [Patterns of Enterprise Application Architecture](https://www.amazon.com/Patterns-Enterprise-Application-Architecture-Martin/dp/0321127420/){:target="_blank"}. This talk was part of the well-known [GOTO conferences](https://blog.gotocon.com/){:target="_blank"} that took place in Berlin in 2014.

<iframe width="560" height="315" src="https://www.youtube.com/embed/wgdBVIX9ifA?rel=0&amp;controls=0&amp;showinfo=0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>

<p></p>

**Fowler** summarizes the common characteristics of Microservices in the following list that I want to keep for myself here:

1. Componentization via services.
2. Organized around business capabilities.
3. Product not Projects.
4. Smart endpoints and dumb pipes.
5. Decentralized Governance.
6. Decentralized Data Management.
7. Infrastructure Automation.
8. Design for failure.
9. Evolutionary Design.

<p></p>

Another point to keep in mind, the comparison between Monolith vs. Microservice, as follows:

| MONOLITH 	               | MICROSERVICE        |
| :----------------------: | :-----------------: |
| Simplicity               | Partial Deployment  |
| Consistency              | Availability        |
| Inter-module refactoring | Preserve Modularity |
|                          | Multiple Platforms  |

Other ingredients of microservice architectures:

* Traceable Business Transactions.
* Continuous Delivery.
* Product-centered Teams [^2].
* Multi-Dev Environment.
* Rapid Provisioning.
* Basic Monitoring.
* Rapid Application Deployment.
* DevOps Culture.

<p></p>

Really convincing arguments to abandon the monolith path that soon turns into a [Big Ball of Mud](https://en.wikipedia.org/wiki/Big_ball_of_mud){:target="_blank"} and follow the microservice way, right? _What do you think?_

For further reference, see also [this article](https://martinfowler.com/articles/microservices.html){:target="_blank"} from **Mr. Fowler** (and recommended in the video).

*Regards!*

---
[^1]: _Martin Fowler works at [ThoughtWorks](https://www.thoughtworks.com/) (June, 2018)._
[^2]: _This is currently the matter of active discussion in the company of a good friend of mine (which I'm not going to mention here, sorry)._
