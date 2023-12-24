---
title: "Seeing is believing: A client-centric specification of database isolation"
authors: Natacha Crooks, Youer Pu, Lorenzo Alvisi, Allen Clement
year: 2017
url: ""
Zotero URI: "zotero://select/items/@crooks2017seeing"
tags: to-read, Natacha-Crooks, Youer-Pu, Lorenzo-Alvisi, Allen-Clement
aliases: Seeing is believing: A client-centric specification of database isolation
---

# Seeing is believing: A client-centric specification of database isolation  
_Natacha Crooks, Youer Pu, Lorenzo Alvisi, Allen Clement (2017)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> This paper introduces the first state-based formalization of isolation guarantees. Our approach is premised on a simple observation: applications view storage systems as black-boxes that transition through a series of states, a subset of which are observed by applications. Defining isolation guarantees in terms of these states frees definitions from implementation-specific assumptions. It makes immediately clear what anomalies, if any, applications can expect to observe, thus bridging the gap that exists today between how isolation guarantees are defined and how they are perceived. The clarity that results from definitions based on client-observable states brings forth several benefits. First, it allows us to easily compare the guarantees of distinct, but semantically close, isolation guarantees. We find that several well-known guarantees, previously thought to be distinct, are in fact equivalent, and that many previously incomparable flavors of snapshot isolation can be organized in a clean hierarchy. Second, freeing definitions from implementation-specific artefacts can suggest more efficient implementations of the same isolation guarantee. We show how a client-centric implementation of parallel snapshot isolation can be more resilient to slowdown cascades, a common phenomenon in large-scale datacenters.


