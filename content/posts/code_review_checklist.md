---
title: "A code review checklist"
date: 2018-03-20T20:29:00-08:00
draft: false
authors: ["rich"]
tags: ["coding", "reviews"]
---

## Goals

I'd like to do two things in this post:

1. describe how i typically approach code reviews, and
2. provide a basic checklist of what I think code reviews should take into consideration.

## My approach to code reviews
If the pull request (PR) is small enough, i'll generally review the complete diff at once (rather than by individual commit).  Without a hard and fast rule, i find that something like ~200 lines affected is generally my cutoff.  (Here, changing a single line would count as 2 because the old line is removed and a new version is added.  Github lists the lines affected by +123, -210, for example; so, i just add these numbers to get a sense of the size.

But if, as is often the case, the diff is bigger, then i like to review the code one commit at a time.  The reason is that i want to consider it in manageable chunks.  When reviewing a big diff all at once, I find I typically don't really look at it very deeply.  So, for a larger PR, i will go commit by commit, and start by reviewing the git commit message.  Often, several of the commits will not require much review.  If the commit message is "whitespace" i will typically glance at the diff to generally confirm the diff is only whitespace.  (If i ever catch someone abusing this by including non-whitespace changes, i immediately stop trusting this user's commits in this way.)  Other examples of commits that i typically review very superficially would be things like reorganizing imports and small enough refactorings.  For refactorings, i will generally look to know what the refactoring is, confirm it's really a refactoring and not changing behavior and review for stylistic things (including naming).  Note that oftentimes bugs are introduced in changes that are intended to be refactorings, but inadvertently create behavioral changes.  Knowing that the change is intended to be a refactoring makes it easier to detect such bugs because you only have to see that the diff will alter behavior (and not have to wonder whether that is intended).

The key, however, is that some of the commits should be about the actual behavioral changes.  I expect the commit message to explain WHY the changes are being made.  For a bug fix, i expect an explanation of the bug (its symptoms) and why the change in this commit is really the right thing.  With that in mind, and not distracted by the lines touched by the other commits, i can now focus on the substantive code changes while asking questions like "does this actually do what is described?", "does it actually address the bug?", and "is this the best way to accomplish the goal?".  If i'm only viewing this in a jumble of other changes, like variable renames, some formatting changes, and other small refactorings, it's very difficult to focus on the important changes.  Also, when some of the refactorings, etc are handled in separate commits earlier in the sequence, the diffs for the substantive changes are hopefully easier to assess.  That, after all, is the point of the refactorings.

## Code Review Checklist
* Style
  * code follows standard style/formatting
  * reasonable class/method/variable naming
  * standard idioms
  * good git commit messages
  * split into appropriate separate commits
      (Added 6/27/2018) Note that several of our "convert this service to core" CRs have introduced bugs that we've caught late in the game (eg in prod).  Part of the problem has been that lost among the thousands of lines of "boring" changes in the diff are a 2 or 3 lines that actually should have been reviewed carefully.  If the changes are logically separated noticing these would be easier.
* Logic
  * is the logic correct?
  * handles the necessary cases?
  * logs appropriate info (generally at the boundary of layers in the system - eg after db queries)
* Database
  * Pay close attention to schema changes.
  * Queries - will they be performant?  (Do we have appropriate indices?)
  * Any schema changes to tables likely to be big in production?  Need to alert people before deploying, if so!
* Monitoring
  * how will we know if this fails
  * does it emit appropriate metrics
* Testing
  * "How have you tested this?" – one of the best review questions ever!  Specifically, not "Did you test this?"
  * are there adequate/appropriate automated tests
  * are the tests focused on the requirements and not relying too much on the specific implementation?
  * each test tests one thing?
  * is this built in a way to facilitate QA testing?
* Design
  * is this a good way to implement whatever feature/functionality
  * is it sufficiently performant?
  * is the high level structure of the code readily apparent?  Eg, if the processing of a request would naturally be described as a sequence of 4 steps, i would expect that sequence of 4 steps to be obvious at a very high level in the code - eg perhaps in the controller method itself.
* Resource usage - these are things one can expect QA to find, so the code author and reviewer must be very careful here!
  * no resource leaks (open files, db or other cnxns, …)
  * if there’s some form of caching, ensuring this is not an OOM in the making,
  * any race conditions or other threading/locking problems? if the answer is not obviously “NO” then the answer is almost certainly “YES”
* Configuration changes - if the changes will require configuration changes, are those also made?  In all the appropriate environments (different partners, different levels qa vs prod)?  Any changes required in puppet to go along with this change?

Part of why I am so demanding of good commit practices (messages and separation of changes into logical commits) is because otherwise the code reviews tend never to get past the style review.  The point is that dividing things up nicely increases the quality of the code by enabling much more valuable code review.  (I think it also forces better discipline on the code author, which has its own benefits independent of code review, but that's a more debatable assertion.)

Please also read http://blog.plasticscm.com/2018/10/checkin-with-reviewers-in-mind-how-to-fix-pull-requests.html
