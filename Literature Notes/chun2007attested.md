---
title: "Attested append-only memory: Making adversaries stick to their word"
authors: Byung-Gon Chun, Petros Maniatis, Scott Shenker, John Kubiatowicz
year: 2007
url: ""
Zotero URI: "zotero://select/items/@chun2007attested"
tags: to-read, Byung-Gon-Chun, Petros-Maniatis, Scott-Shenker, John-Kubiatowicz
aliases: Attested append-only memory: Making adversaries stick to their word
---

# Attested append-only memory: Making adversaries stick to their word  
_Byung-Gon Chun, Petros Maniatis, Scott Shenker, John Kubiatowicz (2007)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> Researchers have made great strides in improving the fault tolerance of both centralized and replicated systems against arbitrary (Byzantine) faults. However, there are hard limits to how much can be done with entirely untrusted components; for example, replicated state machines cannot tolerate more than a third of their replica population being Byzantine. In this paper, we investigate how minimal trusted abstractions can push through these hard limits in practical ways. We propose Attested Append-Only Memory (A2M), a trusted system facility that is small, easy to implement and easy to verify formally. A2M provides the programming abstraction of a trusted log, which leads to protocol designs immune to equivocation – the ability of a faulty host to lie in different ways to different clients or servers – which is a common source of Byzantine headaches. Using A2M, we improve upon the state of the art in Byzantine-fault tolerant replicated state machines, producing A2M-enabled protocols (variants of Castro and Liskov's PBFT) that remain correct (linearizable) and keep making progress (live) even when half the replicas are faulty, in contrast to the previous upper bound. We also present an A2M-enabled single-server shared storage protocol that guarantees linearizability despite server faults. We implement A2M and our protocols, evaluate them experimentally through micro- and macro-benchmarks, and argue that the improved fault tolerance is cost-effective for a broad range of uses, opening up new avenues for practical, more reliable services.


