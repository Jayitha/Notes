---
title: "In search of an understandable consensus algorithm"
authors: Diego Ongaro, John Ousterhout
year: 2014
url: ""
Zotero URI: "zotero://select/items/@ongaro2014search"
tags: to-read, Diego-Ongaro, John-Ousterhout
aliases: In search of an understandable consensus algorithm
---

# In search of an understandable consensus algorithm  
_Diego Ongaro, John Ousterhout (2014)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> Raft is a consensus algorithm for managing a replicated log. It produces a result equivalent to (multi-)Paxos, and it is as efficient as Paxos, but its structure is different from Paxos; this makes Raft more understandable than Paxos and also provides a better foundation for building practical systems. In order to enhance understandability, Raft separates the key elements of consensus, such as leader election, log replication, and safety, and it enforces a stronger degree of coherency to reduce the number of states that must be considered. Results from a user study demonstrate that Raft is easier for students to learn than Paxos. Raft also includes a new mechanism for changing the cluster membership, which uses overlapping majorities to guarantee safety.


