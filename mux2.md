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

I've previously thought the org structure was to blame. Indeed, not splitting these teams may have been better. But the split isn't inherently wrong. It just needs mux work: shared metrics, rules at the free-to-paid boundary, and someone whose job it is to ensure those streams align on goals that improve the business. Often the real failure was that nobody recognized that as their responsibility. A reorg can help when it creates that owner, not merely when it redraws the boxes.

## Demux failures

 A typical demux failure is failing to recognize a project's dependencies on other teams: Platform, Analytics, Data engineering, DevOps. Product engineering demuxes by feature and UX (ship it, make it feel right, get it out) and treats those teams as optional, late, or someone else's problem. Then the build hits a shared-service bottleneck, ships without usable instrumentation, or faces infrastructure that isn't ready. Each workstream might complete right on schedule, but the business goal is blocked by the fact that some dependencies were ignored, blocking the mux stage where everything gets combined.

Bringing those teams in from the outset helps, and still may not be enough. Analytics and data engineering are a clear case: even when they are in the room, if the engineers writing the product code don't think and care about the metrics, the events still come out wrong, sparse, or useless. The demux has to include both the right dependencies *and* a shared expectation that those concerns are part of building the thing, not a handoff after ship. Many of these get fixed by improving the demux, not by investing only in mux work.

What I find so interesting about these failures, besides the fact that they are so common, is the interplay of management and leadership involved.  Management needs to identify and account for the dependencies.  But, in cases where those dependencies are independent teams, especially central shared services teams (Platform, Analytics, Data Engineering, ...), those teams may have conflicting priorities.  In such cases, leadership is needed to decide on tradeoffs and align the teams for success.  It's valuable to distinguish between these two sides: identifying and communicating the dependencies, the demux work, and aligning priorities, the mux work.  Often different people will need to perform these two jobs. But, failure to distingush the two parts may leave everyone thinking the responsibility belongs to someone else!

## Reorgs, tradeoffs, and misdiagnosis

Org structure is always a demux choice. There is no structure without tradeoffs. Strong leaders know that: every cut makes some seams easier and others harder. They pick a demux they can live with, then do the work that cut requires. Sometimes that means fixing the demux itself (better parallelization, the right teams in the cut, engineers who treat measurement as part of building). Sometimes it means mux work at the seams: joint metrics, decision rights, seam ownership, someone accountable for alignment across streams.

Weak diagnosis goes the other direction. Local teams "winning" while the company loses? Draw new boxes. Features that can't be measured? Stand up another analytics pod, or leave the same engineers out of the metrics conversation. Sometimes those moves help. Often they treat a mux failure as if it were a demux failure, or the reverse: they redraw boxes when the cut was fine and nobody owned the seams, or they add mux theater when the real fix was a better demux.

A few questions I find useful before moving boxes around:

1. Is the current cut roughly right for the outcomes we care about, or did we fail to parallelize, leave out needed teams, or split layers/skills when we needed journeys/outcomes?
2. If the cut is roughly right, at the seams it creates, who owns the interface, and what joint metric or rule set encodes success across it?
3. If we reorg, which tradeoffs are we *accepting*, and what demux or mux work will we do so those tradeoffs don't become bumper cars?

If you can't answer (3), you're about to rearrange furniture without fixing either side of the problem.

## Behaviors, again

None of this maps cleanly onto titles. An IC demuxes their week and muxes tradeoffs across the work on their plate. A first-line manager demuxes a team's backlog and still needs to mux: keep shared goals alive in standups and planning, not only in 1:1s. A VP who only inspirationally muxes without clean cuts leaves the org thrashing. A "manager" who only demuxes tickets and never sets shared encoding is under-leading.

Titles don't settle it. The work does.

So when something feels stuck (freemium teams in conflict, features that can't be measured, a reorg that somehow reproduced the same fights), ask which failure you're in before you rearrange the furniture. Demux failures need a better cut: clearer parallelization, the right people in the work, and a mindset that measurement belongs in the build. Mux failures need shared encoding at the seams, and often a clear owner for alignment. Plenty of situations need both. Misdiagnosing which is which is how you get a new org chart and the same outcome.
