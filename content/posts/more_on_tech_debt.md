---
title: "More on tech debt"
date: 2018-10-27T21:01:27-08:00
draft: false
authors: ["rich"]
tags: ["tech debt"]
---

In response to a discussion at work, i wrote some further thoughts on tech debt captured here.  (See my earlier post [Tech Debt Tradeoffs]({{< relref "tech_debt_tradeoffs.md" >}}))

### Timeline/Context
I want to help people explicitly consider the timeline for the return on investment.  So, for example, if you are going to release your big project in 3 weeks, certain options will be off the table.  But, if you have 3 months they might be clearly superior to what you'd do in the 3-week situation.  Good technical decisions depend on understanding the context and, in particular, the timeline. When we mislead ourselves on the timeline we often make more costly mistakes. 

As another example, when i was a freshman in college i was in Navy ROTC.  We had a mini-bootcamp before the school year began and one of the things we had to do was hem our newly issued uniform pants.  But, we were only given a few minutes to do this.  So, nobody got it done.  We'd walk around for the next day in pants that were dragging on the ground, unhemmed.  Any work we accomplished would get undone as it was not done well enough to last.  The next day we'd again get just a couple minutes to hem our pants (while being chewed out for not having completed the job yet.)  After a few days of this, some people figured out that they should aim to do a fast job to get one leg sufficiently hemmed that it would not get ripped apart before having another opportunity to improve it.  The next day, one could improve the existing hem enough to last another day, while getting the other leg to the same state.  Then, the pattern was maintenance to last one more day, and some longer lasting work to make it actually decent, without having to complete that work in one sitting.  The point here is much the same as above:  understanding your timeframe for completing the work is essential to optimizing the approach you take.

### Reducing Tech Debt is not an "End" unto itself
It's a mere means to an end.  To product/business we need to present our case not about tech debt, but rather in terms of a need to take a little bit longer (quantify it!) to solve this in way X versus in way Y and here are the tradeoffs/reasons.  It's not that we should "pay off tech debt" --- nobody *really* cares (or should) about that for its own sake.  What we all *should* care about is the benefits we get from doing this.  and, we should recognize that those benefits come with tradeoffs.  If you can reduce tech debt in building feature X in <= the time it would take you NOT reducing the tech debt, then you don't really need anybody else to buy in, do you?  (Technically you might if you are increasing the risk in this approach)

### Personal Satisfaction
For me, I realized a long time ago that most of the work we do is not "rocket science" (advanced algorithms, machine learning, etc), but, doing it well (high productivity, reliable services that are easy to maintain, extend, operate, and monitor) is still a challenge, and a worthy one.  So, I shifted my perspective to enjoying the challenge of optimizing my work to the business context.  It's not about some abstract/ivory-tower notion of technical excellence.  It's about solving the business needs in an optimal way - optimal in context.

As an example, 10+ years ago i was working at Tellme, a company with a hosted Voice-XML platform for automating customer service on toll free phone numbers - eg for American Airlines, Fidelity, USAA, UPS, ...  At Tellme we had a weekly "prod ops" meeting where folks would present demos of something they were pitching to become a new product, To try to convince execs to fund it. The CEO, CFO and other execs would attend to evaluate the ideas. 

So, one day a pair of guys were pitching using text msgs (SMS) for directory assistance (this was in ~2005).  Tellme already automated directory assistance for Cingular so had the basic infrastructure for lookups.  so, they built a demo using a nokia candybar phone (there was no such thing as an iPhone at the time), polled over bluetooth by a perl script from the guys laptop for incoming texts.  Once received, perl on the laptop would call out to our directory assistance servers to do the lookup, and then reply by text msg (again initiated over bluetooth to the phone).  The demo failed at first, b/c the phone was too far from the laptop 

Afterwards, the Sr VP of Service Delivery (who ran all of product development) and the VP of Product were laughing, saying "that's the worst architecture i've ever seen!"  I jumped in to say "What do you mean?  This was one of the best architectures i've ever seen." They thought i was kidding. But, I explained, the pair optimized for the business context:  minimal effort to show a working demo to pitch a product idea.  Not a prototype of a real system.  Not something scalable.  Minimize effort.  They built this in a day or two.  They optimized to the problem.  The code might have been ugly as poop.  The design was certainly not ivory-tower great.  But, that's not what the situation called for.

So, my suggestion to engineers is to try to optimize to the situation/context.  and, take pride in doing well at THAT.  it will also help you grow in seniority because that is ultimately about optimizing value for the business.  and, engineers that are good at that are worth a ton.

### Suggestions:
* Reflect on work you've done with this in mind.  did you optimize delivery of business value in the context?  What was the context?  Was the context you thought you were in appropriate?
* Reflect on tech debt you (or others) introduce:  was it a good decision (in context)?  is the "interest" on that debt high?  low?  is the problem like a weed, spreading into bigger and bigger cost to undo?
* Similarly, reflect on tech debt that has been addressed (or attempts have been made, at least).  Did it pay off?  How? How quickly?
* Consider explicitly the context in which you are working and how to optimize business value in that context.
* Discuss with others - not just engrs and mgrs (eg brendan, jeff, me) , but product managers and others.
I think if one is deliberate about thinking about it, they will improve rapidly.

### Last thing:
Being able to present your thoughts coherently and dispassionately (possibly in writing) will be a great benefit in this effort.  (I have particular trouble with the "dispassionately" part, as my colleagues past and present all certainly noticed.)
