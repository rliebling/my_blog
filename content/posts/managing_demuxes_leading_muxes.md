---
title: "Managing Demuxes, Leading Muxes"
date: 2026-10-01T11:30:00-07:00
draft: true
authors: ["rich"]
tags: ["leadership", "management", "alignment", "engineering"]
---

In [Leading vs Managing]({{< relref "leading_vs_managing.md" >}}), I argued that leading and managing are behaviors, not job titles. Most roles need both, in different proportions. Here I want to share a new perspective on this distinction,  one that has helped me think more clearly about where orgs go wrong, and why reorgs so often miss the mark.

Borrowing from electronics: managing is largely about **demultiplexing**, and leading is largely about **multiplexing**.

A demultiplexer takes one signal and splits it onto multiple channels. A multiplexer takes multiple channels and combines them back into one. (If you've spent time with audio, networking, or chip design, you already live with these terms. If not: demux = split; mux = combine.)

Applied to organizations:

- **Managing (demux):** take a goal and decompose it into parallel workstreams - teams, projects, tickets - with enough clarity that people can make progress without constant collision.
- **Leading (mux):** make sure those streams combine into the outcome you actually want - shared purpose, joint metrics, and guardrails.

Here's the shape of it on a multi-team project: 

![Managing demuxes, leading muxes](/images/managing_demuxes_leading_muxes.png)


Alignment, as I wrote about in [Bumper Cars or Go Karts?]({{< relref "bumper_cars_or_gokarts.md" >}}), is mostly a mux problem. Loose coupling is mostly a demux problem. You need both. What follows is about the failure modes, which is where the metaphor shows its value.

## A mux failure under a plausible demux

Imagine a freemium product split into paid and free teams. Paid owns conversion and monetization; free owns signup, engagement, and UGC. On paper that's a reasonable demux: different tactics, skills, and day-to-day loops.

Each team ships A/B tests that look great in isolation. Paid lifts conversion; free lifts signup or engagement. Ship both and they step on each other. The free variant pulls people off the paid path, or the paid paywall dulls the free loop feeding the funnel. Local winners, combined losers.

I've previously thought the org structure was to blame. Indeed, not splitting these teams may have been better. But the split isn't inherently wrong. It just needs mux work: shared metrics, rules at the free-to-paid boundary, and someone whose job it is to make those streams align on goals that improve the business. Often the real failure was that nobody recognized that as their responsibility. A reorg can help when it creates that owner, not merely when it redraws the boxes.

## Demux failures

 A typical demux failure is failing to recognize a project's dependencies on other teams: Platform, Analytics, Data engineering, DevOps. Product engineering demuxes by feature and UX (ship it, make it feel right, get it out) and treats those teams as optional, late, or someone else's problem. Then the build hits a shared-service bottleneck, ships without usable instrumentation, or faces infrastructure that isn't ready. Each workstream might complete right on schedule, but the business goal is blocked by the fact that some dependencies were ignored, blocking the mux stage where everything gets combined.

Bringing those teams in from the outset helps, and still may not be enough. Analytics and data engineering are a clear case: even when they are in the room, if the engineers writing the product code don't think and care about the metrics, the events still come out wrong, sparse, or useless. The demux has to include both the right dependencies *and* a shared expectation that those concerns are part of building the thing, not a handoff after ship. Many of these get fixed by improving the demux, not by investing only in mux work.

What I find so interesting about these failures, besides the fact that they are so common, is the interplay of management and leadership involved.  Management needs to identify and account for the dependencies.  But, in cases where those dependencies are independent teams, especially central shared services teams (Platform, Analytics, Data Engineering, ...), those teams may have conflicting priorities.  In such cases, leadership is needed to decide on tradeoffs and align the teams for success.  It's valuable to distinguish between these two sides: identifying and communicating the dependencies, the demux work, and aligning priorities, the mux work.  Often different people will need to perform these two jobs. But, failure to distingush the two parts may leave everyone thinking the responsibility belongs to someone else!

## Who owns the mux?

One potential goal of the org structure is to minimize how many teams must be involved in each project. When a complete project fits inside a single team, that team's manager owns both the demux and the mux. They are fully responsible for success or failure, making accountability clear.  That simplicity is not always feasible. The next step up is when every team needed for a project reports to the same director. Then the director is accountable, and in particular responsible for a smooth mux of the workstreams.

In practice, companies often have separate Product Management, UX/Design, and Engineering orgs, and sometimes a separate TechOps org, each of which matters on any significant project. (This is because minimizing the number of teams involved in projects is not the only objective of the org structure.)  Then who is responsible for aligning those teams so the work muxes cleanly? That person need not sit atop every involved hierarchy, though that usually makes things easier. Someone still needs to perform this role, and leadership needs to ensure everyone recognizes and respects that assignment. Too often leaders punt, just expecting everyone to work resolving all their issues. Even setting aside personal egos, ambition, and politics in larger orgs, these teams have competing priorities that naturally create conflict.  Conflict doesn't mean people are behaving poorly or not collaborative.  Often it just reflects people trying to do what's best for the company, but having different understandings of what that might be.  When leaders treat such conflicts as failures of the people involved, they do a disservice to those involved. And, they create a culture where managers seek to avoid conflicts in ways that might not be best for the business.  For example, they likely favor projects involving more politically influential managers, even if those might not be the highest business priority.

One way to reduce that conflict, while accepting that multiple teams are involved, is to dedicate people from each team to the specific project. In effect you create a temporary project team. That helps a lot, but it does not erase every conflict: each person still has obligations to their home team (follow the team's processes, review others' work, get their own work reviewed there). Additionally, this can be inefficient as often the project does not demand a person on one of these teams full-time, instead needing their focus at various times during the life of the project.

Org structure remains a demux choice with tradeoffs. Strong leaders pick a structure they can live with, then make mux ownership explicit at whatever level the work actually spans. Weak diagnosis redraws boxes, or hopes "collaboration" will substitute for a named owner.

A few questions I find useful before moving boxes around:

1. Can this work live mostly inside one team (or under one director), or must it span Product, Design, Engineering, and Ops?
2. If it spans, who owns the mux across those teams, and do the people involved recognize that assignment?
3. If we reorg, which tradeoffs are we *accepting*, and what demux or mux work will we do so those tradeoffs don't become bumper cars?

If you can't answer (2) and (3), you're about to rearrange furniture without fixing either side of the problem.

## Behaviors, again

None of this maps cleanly onto titles. An IC demuxes their week and muxes tradeoffs across the work on their plate. A first-line manager demuxes a team's backlog and still needs to mux: keep shared goals alive in standups and planning, not only in 1:1s. A VP who only inspirationally muxes without clean cuts leaves the org thrashing. A "manager" who only demuxes tickets and never sets shared encoding is under-leading.

Titles don't settle it. The work does.

So when something feels stuck (freemium teams in conflict, features that can't be measured, a reorg that somehow reproduced the same fights), ask which failure you're in before you rearrange the furniture. Demux failures need a better cut: clearer parallelization, the right people in the work, and a mindset that measurement belongs in the build. Mux failures need shared encoding at the seams, and often a clear owner for alignment. Plenty of situations need both. Misdiagnosing which is which is how you get a new org chart and the same outcome.
