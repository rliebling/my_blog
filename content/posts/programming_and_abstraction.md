---
title: "Programming and Abstraction"
date: 2019-04-12T08:27:40-07:00
draft: true
authors: ["rich"]
tags: ["programming", "refactoring", "abstraction"]
---

I want to share a few good articles I read in the last week on programming.  

The first two use Elixir and Erlang for their examples, but the concepts apply to programming in any language.
In [Don't Repeat Your Domain Knowledge](https://dsdshcym.github.io/blog/2018/10/26/dont-repeat-your-domain-knowledge/), Yiming's main point is that the well known DRY ("Don't Repeat Yourself") principle applies most importantly to domain knowledge.  More and more the community seems to recognize that taking DRY too far can be quite harmful.  He cites the important contribution of Sandi Metz to this conversation with [The Wrong Abstraction](https://www.sandimetz.com/blog/2016/1/20/the-wrong-abstraction).

But, the point I want to make about Yiming's example, is the importance of recognizing a policy and factoring out that policy (the conditional) into its own method/function. In his example, the policy is: when is someone allowed to comment on a blog post.   Too often programmers embed such small policies into larger methods, typically the enforcement mechanism of the policy.  This tends to make the code less clear, complicate later changes to the policy, and introduce more risk when either the policy or the enforcement change.

Then, today I came across this [great article](https://medium.com/@gar1t/solving-embarrassingly-obvious-problems-in-erlang-e3f21a6203cc) about refactoring code to be embarrasingly obvious (and eventually learning to code that way from the start, for even better results).  (Don't turn away just because it uses Erlang for its example.)  I got this "religion" a long time ago and find it is amazingly helpful.  For me, the revelation came when I read Martin Fowler's [Refactoring](https://martinfowler.com/books/refactoring.html) book, when it was first published back in 1999.  I read the whole book in one sitting and immediately embarked on applying the principles to all new code I wrote.  It took only a couple weeks for me to be completely convinced of its merits.  Seeing how this approach revealed the "right" abstractions was what sealed the deal for me, forever changing how I thought about programming.

Finally, I want to pass along this [article](https://microservices-on-my-mind.blogspot.com/2019/04/break-functional-and-orchestration.html?m=1) on separating the plumbing/orchestration from the functional parts of your code.  When you read it forget that it's talking about microservices (a topic for another day) and just think about it in terms of how to organize functionality.  I was discussing exactly this topic of how to structure workflow chains with an engineer two days before I saw this article on Hacker News.

