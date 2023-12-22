---
title: "Snowflock: Rapid virtual machine cloning for cloud computing"
authors: Horacio Andrés Lagar-Cavilla, Joseph Andrew Whitney, Adin Matthew Scannell, Philip Patchin, Stephen M Rumble, Eyal De Lara, Michael Brudno, Mahadev Satyanarayanan
year: 2009
url: ""
Zotero URI: "zotero://select/items/@lagar2009snowflock"
tags: to-read, Horacio Andrés-Lagar-Cavilla, Joseph Andrew-Whitney, Adin Matthew-Scannell, Philip-Patchin, Stephen M-Rumble, Eyal-De Lara, Michael-Brudno, Mahadev-Satyanarayanan
aliases: Snowflock: Rapid virtual machine cloning for cloud computing
---

# Snowflock: Rapid virtual machine cloning for cloud computing  
_Horacio Andrés Lagar-Cavilla, Joseph Andrew Whitney, Adin Matthew Scannell, Philip Patchin, Stephen M Rumble, Eyal De Lara, Michael Brudno, Mahadev Satyanarayanan (2009)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> Virtual Machine (VM) fork is a new cloud computing abstraction that instantaneously clones a VM into multiple replicas running on different hosts. All replicas share the same initial state, matching the intuitive semantics of stateful worker creation. VM fork thus enables the straightforward creation and efficient deployment of many tasks demanding swift instantiation of stateful workers in a cloud environment, e.g. excess load handling, opportunistic job placement, or parallel computing. Lack of instantaneous stateful cloning forces users of cloud computing into ad hoc practices to manage application state and cycle provisioning. We present SnowFlock, our implementation of the VM fork abstraction. To evaluate SnowFlock, we focus on the demanding scenario of services requiring on-the-fly creation of hundreds of parallel workers in order to solve computationally-intensive queries in seconds. These services are prominent in fields such as bioinformatics, finance, and rendering. SnowFlock provides sub-second VM cloning, scales to hundreds of workers, consumes few cloud I/O resources, and has negligible runtime overhead.


