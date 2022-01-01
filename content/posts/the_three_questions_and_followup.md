---
title: "The Three Questions and Followup"
date: 2019-04-24T16:58:50-07:00
draft: false
authors: ["rich"]
tags: ["agile", "standup", "accomplishment","blockers"]
---

With agile processes and Scrum, in particular, being so prevalent, most people are familiar with the famous "3 questions" for daily standup:
```
1.  What did I accomplish since last standup?
2.  What do I intend to accomplish today?
3.  What blockers do I face?
```

However, I find that many people fail to appreciate a certain subtlety of the questions.  I'm talking about the significance of the word **accomplish** in the first two questions.  Too many people routinely answer the questions in the form:
```
1.  Yesterday I worked on XYZ.
2.  Today I will keep working on XYZ.
3.  No blockers.
```
While that may be helpful to some, it's far less helpful than what the questions are intended for and what made them such a common practice at daily standups across the industry.  The answers above don't address **accomplishment**.  Think of accomplishment as a vector, comprised of a direction and a magnitude.  Accomplishment is about how your current status is different from your previous day's status.  Accomplishment measures progress.

## Why answer in terms of accomplishment?

For both the team and the individual, it focuses on progress toward the actual goal.  A person might get side-tracked on solving some issue which, with the goal in mind, might not really need to be solved.  Thinking and answering in terms of accomplishment helps make these diversions more apparent, both to the worker and to teammates.

Being explicit about the intended accomplishment today, focuses the person on what chunk of work they can actually get done.  I contend that setting such a goal explicitly makes it much more likely that the person accomplishes it.  And, I assert that there is reseach to back that up, although I won't be citing any here :)  In part, I believe the act of thinking about the next steps that one can actually take _today_ as opposed to (perhaps) just thinking "there's a lot of work left to do" helps avoid procrastination.  Additonally, the commitment (such as it is) also helps.

Compare the non-specific responses above with a response like this:

1.  Yesterday I started on XYZ.  I determined the data was already available via the following API's:... and that I would run this task as a cron job.  I also wrote a basic script to gather the data.
2.  Today I intend to complete the script and deal with error handling.  I will update puppet to configure this as a nightly cronjob.  And, I hope to also create the alerts to fire if the job fails.
3.  I have no blockers.  But, I might need help with puppet.

Not only does this convey confidence that the task will be completed, it also provides an opportunity for others to question things like, in this example, whether it should run via cron, versus some other mechanism.

But, there's another important aspect which deserves more credit.  I tell managers and team leads that one of their responsibilities is to pay attention at standup to detect that someone is blocked (or not making progress) even if they don't recognize it themselves. Besides the fact that people are often reluctant to say they are blocked (if they feel like it might suggest they are less capable of solving a problem), sometimes people just honestly do not realize it.  Technically, it may not be that they are _blocked_.  But, if they are not making good progress that should invite a conversation, whether one-on-one or with the team.  Perhaps the person has chosen a bad approach or is just unfamiliar with some tool or library or stuck on some bug.  The point is to have a team culture where others notice and ask some questions to see if help is appropriate.


## What to do when people don't refer to accomplishments?

When people answer like "keep working on X" I used to respond with "But, what do you intend to accomplish?".  While that is probably better than just letting it slide, I believe I have a better way to help people while being less confrontational.  Now, I suggest asking "What is left to do on X?" to try to get a list of remaining work items.  Then, followup with "And, what part of that do you expect to accomplish today?".  The first question helps get a meaningful answer while making the second question easier to answer, and harder to avoid with just "I don't know.  I'm just going to keep working on it".  You can always ask specific questions about the items listed that are yet to be done.  If they won't give specifics, then I suggest following up one-on-one with the individual.  Generally they are either being combative or they need help thinking through and breaking down the problem.
