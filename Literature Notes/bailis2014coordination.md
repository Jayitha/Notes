---
title: "Coordination avoidance in database systems (Extended version)"
authors: Peter Bailis, Alan Fekete, Michael J Franklin, Ali Ghodsi, Joseph M Hellerstein, Ion Stoica
year: 2014
url: ""
Zotero URI: "zotero://select/items/@bailis2014coordination"
tags: to-read, Peter-Bailis, Alan-Fekete, Michael J-Franklin, Ali-Ghodsi, Joseph M-Hellerstein, Ion-Stoica
aliases: Coordination avoidance in database systems (Extended version)
---

# Coordination avoidance in database systems (Extended version)  
_Peter Bailis, Alan Fekete, Michael J Franklin, Ali Ghodsi, Joseph M Hellerstein, Ion Stoica (2014)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> Minimizing coordination, or blocking communication between concurrently executing operations, is key to maximizing scalability, availability, and high performance in database systems. However, uninhibited coordination-free execution can compromise application correctness, or consistency. When is coordination necessary for correctness? The classic use of serializable transactions is sufficient to maintain correctness but is not necessary for all applications, sacrificing potential scalability. In this paper, we develop a formal framework, invariant confluence, that determines whether an application requires coordination for correct execution. By operating on application-level invariants over database states (e.g., integrity constraints), invariant confluence analysis provides a necessary and sufficient condition for safe, coordination-free execution. When programmers specify their application invariants, this analysis allows databases to coordinate only when anomalies that might violate invariants are possible. We analyze the invariant confluence of common invariants and operations from real-world database systems (i.e., integrity constraints) and applications and show that many are invariant confluent and therefore achievable without coordination. We apply these results to a proof-of-concept coordination-avoiding database prototype and demonstrate sizable performance gains compared to serializable execution, notably a 25-fold improvement over prior TPC-C New-Order performance on a 200 server cluster.


