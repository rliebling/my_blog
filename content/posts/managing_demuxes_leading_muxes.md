---
title: "Managing Demuxes, Leading Muxes"
date: 2026-10-01T11:30:00-07:00
draft: true
authors: ["rich"]
tags: ["leadership", "management", "alignment", "engineering"]
---

In [Leading vs Managing]({{< relref "leading_vs_managing.md" >}}), I argued that leading and managing are behaviors, not job titles. Most roles need both, in different proportions. I want to offer another lens on that same distinction — one that has helped me think more clearly about where orgs go wrong, and why reorgs so often miss the mark.

Borrowing from electronics: managing is largely about **demultiplexing**, and leading is largely about **multiplexing**.

A demultiplexer takes one signal and splits it onto multiple channels. A multiplexer takes multiple channels and combines them back into one. (If you've spent time with audio, networking, or chip design, you already live with these terms. If not: demux = split; mux = recombine.)

Applied to organizations:

- **Managing (demux):** take a goal and decompose it into parallel workstreams — teams, projects, tickets — with enough clarity that people can make progress without constant collision.
- **Leading (mux):** make sure those streams can be reassembled into the outcome you actually wanted — shared purpose, joint metrics, guardrails, and someone who owns the seams.

Alignment, as I wrote about in [Bumper Cars or Go Karts?]({{< relref "bumper_cars_or_gokarts.md" >}}), is mostly a mux problem. Loose coupling is mostly a demux problem. You need both. What follows is about the failure modes — because that's where the metaphor earns its keep.

## A mux failure under a plausible demux

Imagine a freemium product. Leadership creates two teams: one owns the paid experience (conversion, retention of paying customers, monetization features); the other owns the free experience (signup, engagement, user-generated content that makes the product valuable). On paper, this is a reasonable demux. The day-to-day work really is different. Different tactics, different skills, different loops.

Each team hits its local targets. Paid improves conversion. Free grows signups and UGC. And somehow the business goal still stalls.

What's missing isn't necessarily that the split was illegitimate. What's missing is the mux: a joint metric that both teams are accountable to, clear rules for tradeoffs at the free→paid boundary, and an owner of the seam where free users become paying ones (or where engagement features undermine monetization, or the reverse). Without that shared encoding, each stream optimizes for its own channel. The parts don't recombine into the outcome.

I've seen people diagnose this as "we organized wrong" and immediately redraw the boxes. Sometimes the boxes *are* wrong. Often, though, the boxes were fine and the encoding was never set. A reorg without joint metrics just gives you a new set of local optima.

## Demux failures

Mux failures get a lot of airtime — alignment, culture, "one team." Demux failures are quieter, and just as common. Here the cut itself is the problem: you split the work in a way that can't produce the goal, even if everyone is aligned on what the goal is.

### Wrong cut on a journey

Frontend owns the UI; backend owns the APIs; nobody owns checkout. Or platform owns the shared services and product teams file tickets into a queue. You demuxed the org chart (or the architecture) instead of demuxing the outcome. People stay busy. The journey still limps.

### Too fine a cut

Every microservice gets its own team. Coordination becomes the product. The demux "win" — parallel progress — gets eaten by the tax of stitching the streams back together. This is demux without regard for whether the interfaces can actually carry the load.

### Incomplete demux — the analytics version

This one bites more often than we admit. Product engineering demuxes work among engineers and subteams by behavior and UX: ship the feature, make it feel right, get it out. Metrics are an afterthought, partly because there's a data analytics team somewhere that "owns" measurement. So instrumentation is thin, inconsistent, or bolted on late. The features ship. Then someone asks a question the captured data can't answer — not because analytics failed to run a query, but because the streams were never cut with the encoding the goal required.

Is that a management failure or a leadership failure? Both, in a particular order. The failure *mode* is demux: the parts cannot be assembled into the desired analysis (and therefore into guided decisions). The reason it keeps happening is often missing leadership — the shared encoding of "what must be measurable" was never a constraint on how the work got split. Managers who ignore that are managing badly *because* the encoding was left undefined. A central analytics team can look like mux capacity, but if it lets product drop measurement from their demux, you've outsourced the encoding instead of multiplexing it into every stream.

## Reorgs, tradeoffs, and misdiagnosis

Org structure is always a demux choice. There is no structure without tradeoffs. Strong leaders know that: every cut makes some seams easier and others harder. They pick a demux they can live with, then invest in the mux work — joint metrics, decision rights, seam ownership — that makes that particular set of tradeoffs survivable.

Weak diagnosis goes the other direction. Local teams "winning" while the company loses? Draw new boxes. Metrics that don't support the questions you need? Stand up another analytics pod. Sometimes those moves help. Often they treat a mux failure as if it were a demux failure, or the reverse.

A few questions I find useful before moving boxes around:

1. Is the current cut roughly right for the outcomes we care about, or did we split layers/skills when we needed journeys/outcomes?
2. At the seams this cut creates, who owns the interface — and what joint metric or rule set encodes success across it?
3. If we reorg, which tradeoffs are we *accepting*, and what mux work will we do so those tradeoffs don't become bumper cars?

If you can't answer (3), you're about to pay for a demux change without buying the mux that would make it work.

## Behaviors, again

None of this maps cleanly onto titles. An IC demuxes their week and muxes tradeoffs across the work on their plate. A first-line manager demuxes a team's backlog and still needs to mux: keep the encoding alive in standups and planning, not only in 1:1s. A VP who only inspirationally muxes without clean cuts leaves the org thrashing. A "manager" who only demuxes tickets and never sets encoding is under-leading.

Titles don't settle it. The work does.

So when something feels stuck — freemium teams in conflict, features that can't be measured, a reorg that somehow reproduced the same fights — ask which failure you're in before you rearrange the furniture. Demux failures need a better cut (or a more complete one). Mux failures need shared encoding at the seams. Plenty of situations need both. Misdiagnosing which is which is how you get a new org chart and the same outcome.
