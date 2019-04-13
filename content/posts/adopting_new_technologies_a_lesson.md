---
title: "Adopting New Technologies - A Lesson"
date: 2019-04-13T15:52:14-07:00
draft: false
authors: ["rich"]
tags: ["technology", "adoption", "complexity", "kubernetes", "bugs", "k8s"]
---

At dinner the other night with a former colleague of mine, he shared some war stories from the trenches with Kubernetes.  Don't get me wrong:  I think Kubernetes is incredibly powerful and useful.  But, it brings a lot of complexity and with complexity comes trouble.  

So, what did he share?  He's working at a very cool startup that has not yet launched their product/platform.  But, they are up and running with a few folks using the platform.  And, they use kubernetes and manage the kubernetes cluster themselves.  That is, they are not leveraging a kubernetes system managed by their cloud provider, where they just have to define what to run in their cluster.  Apparently, doing it this way is more trouble than many may realize when they choose to go this path.

So, in this situation where they are not yet even fully launched, they've already hit issues with [network connection delays](https://github.com/containernetworking/plugins/issues/123), [dropped network black holes](https://github.com/kubernetes/kubernetes/issues/56903) (packets never reach their destination), and [intermittent connection resets](https://kubernetes.io/blog/2019/03/29/kube-proxy-subtleties-debugging-an-intermittent-connection-reset/).  These are bugs that have existed for quite a while. The time it took him to diagnose the symptoms he saw and identify that they were in fact bugs with k8s was significant, when what he really wanted to be doing was finishing up the platform so they could launch.  His plan now is to vastly simplify how they use kubernetes networking to avoid these and other potential issues.

It's not surprising that bugs like this exist.  It's actually quite natural to expect that.  The problem is that too often we adopt new technologies without regard to the likelihood that we will encounter such issues.  That is, we systematically underestimate the cost of such decisions.  Keep this in mind when considering adopting new technologies, whether kubernetes, the latest distributed database, or whatever.




