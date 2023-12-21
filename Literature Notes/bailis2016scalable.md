---
title: "Scalable atomic visibility with RAMP transactions"
authors: Peter Bailis, Alan Fekete, Ali Ghodsi, Joseph M Hellerstein, Ion Stoica
year: 2016
url: ""
Zotero URI: "zotero://select/items/@bailis2016scalable"
tags: to-read, Peter-Bailis, Alan-Fekete, Ali-Ghodsi, Joseph M-Hellerstein, Ion-Stoica
aliases: Scalable atomic visibility with RAMP transactions
---

# Scalable atomic visibility with RAMP transactions  
_Peter Bailis, Alan Fekete, Ali Ghodsi, Joseph M Hellerstein, Ion Stoica (2016)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> Databases can provide scalability by partitioning data across several servers. However, multipartition, multioperation transactional access is often expensive, employing coordination-intensive locking, validation, or scheduling mechanisms. Accordingly, many real-world systems avoid mechanisms that provide useful semantics for multipartition operations. This leads to incorrect behavior for a large class of applications including secondary indexing, foreign key enforcement, and materialized view maintenance. In this work, we identify a new isolation model—Read Atomic (RA) isolation—that matches the requirements of these use cases by ensuring atomic visibility: either all or none of each transaction's updates are observed by other transactions. We present algorithms for Read Atomic Multipartition (RAMP) transactions that enforce atomic visibility while offering excellent scalability, guaranteed commit despite partial failures (via coordination-free execution), and minimized communication between servers (via partition independence). These RAMP transactions correctly mediate atomic visibility of updates and provide readers with snapshot access to database state by using limited multiversioning and by allowing clients to independently resolve nonatomic reads. We demonstrate that, in contrast with existing algorithms, RAMP transactions incur limited overhead—even under high contention—and scale linearly to 100 servers.


