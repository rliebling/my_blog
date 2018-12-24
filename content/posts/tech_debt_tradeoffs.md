---
title: "Tech debt tradeoffs"
date: 2018-10-22T20:47:21-08:00
draft: false
authors: ["rich"]
tags: ["tech debt"]
---

NOTE: please also see my followup post [More on tech debt]({{ relref . "more_on_tech_debt.md" }}).

### Tech Debt and the Race against Time:
As I often say, we should all understand that there is good technical debt and bad technical debt. In real life, I have a house with a mortgage but don’t consider my mortgage bad. Sure, all else being equal, i’d rather not have a mortgage to pay. But, not all else IS equal. Because the mortgage allowed me to get a nice house now that i otherwise could not, I am good with the tradeoff of taking on this debt. Similarly, tech debt can be a very good thing, allowing you to have something you want sooner than you could otherwise have it (and perhaps otherwise you would never be able to have it).

We should all keep in mind that startups are almost always in a race against time. More funding can often buy the startup more time (though not always). Sometimes that race is not so much about funding as about the market opportunity - competitors may gain a lead in the space or your solution, being late to market, may miss the mark at that time.

That said, some tech debt is very bad. This tech debt effectively has a high interest rate: the costs of it increase greatly over time. If my home mortgage had an interest rate comparable to credit card rates (or payday loans!) then there’s no way I would keep that mortgage. Ideally, i’d refinance into a reasonable mortgage (not necessarily pay off the house completely.) Some tech debt is expensive because the ongoing costs of dealing with it are so high - maybe there are many bugs and bug fixes are costly, or maybe it limits our ability to add new features efficiently and reliably. Other tech debt is expensive because its badness spreads and infects so many other parts of the codebase that fixing it later just becomes increasingly expensive.  So, while you may not be paying the interest along the way, the cost to payoff the debt is increasing fast.

Also, some tech debt comes from deliberate choices while other tech debt is not deliberate. Ideally, we are deliberate about tech debt, and make good decisions to avoid bad tech debt while taking on as much good tech debt as we can. Yes, let me repeat: take on as much good tech debt as we can. The point is that good tech debt is leverage: a mortgage lets me put a downpayment of X to buy a house for, say, 5*X. Just as a startup raises money from investors because it provides leverage, so does good tech debt. As Wimpy used to say, “I’ll gladly pay you Tuesday for a hamburger today.”

{{< youtube 30knrJBeyr0 >}}

## Tradeoffs

Decisions about how to implement stories (including bug fixes) involve making tradeoffs.  For example, a bug fix may involve changing some particularly ugly bit of code.  One option might be to add some special case conditional logic to handle the case causing the bug, making the code marginally worse than before.  On the plus side, this might be the least risk (at least, the least risk in the short term).  Another option might be to engage in a much larger effort to rewrite the ugly code in a better way, incurring more immediate risk to both quality and schedule, but leaving the code in better condition than it was before.  And, there are almost always in-between options.  There's no simple answer to which is better - it depends on the specific context. 

The best general advice i can provide is to engage in "proportional investment" – the idea here is that you invest some effort to improve the general area of code, but in proportion to how much work MUST be done.  If you can get away with a quick, two line fix, then probably not worth turning that into 2 days of work.  But, if the quick fix will take say 4 hours, spending an extra 2 hours to improve the code might be a very good thing.  Over time, if many changes are needed in a particular area of code, that code will get the benefit of many "proportional investments". 

But, these tradeoffs ought to involve some discussion with the team (including the product owner!) or a technical leader on the team.  Indeed, when possible these discussions should happen early enough in the process to be accounted for in the estimate.

## My Expectations
Many of these decisions are judgment calls, with no objectively "right" or "wrong" answers.  That said, some people exhibit better judgment than others, generally by virtue of having more and better experience.  (NOTE: the "better" in "better experience" mostly means that they are deliberate in reflecting on how decisions - both their decisions and others' decisions - have worked out, and being in a culture that encourages that reflection.) 

I expect teams to be deliberate in the tradeoffs they make, reflect on those decisions to improve going forward, and recognize where they could have done better.

