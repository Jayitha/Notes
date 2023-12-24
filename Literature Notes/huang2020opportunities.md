---
title: "Opportunities for optimism in contended main-memory multicore transactions"
authors: Yihe Huang, William Qian, Eddie Kohler, Barbara Liskov, Liuba Shrira
year: 2020
url: ""
Zotero URI: "zotero://select/items/@huang2020opportunities"
tags: to-read, Yihe-Huang, William-Qian, Eddie-Kohler, Barbara-Liskov, Liuba-Shrira
aliases: Opportunities for optimism in contended main-memory multicore transactions
---

# Opportunities for optimism in contended main-memory multicore transactions  
_Yihe Huang, William Qian, Eddie Kohler, Barbara Liskov, Liuba Shrira (2020)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> Optimistic concurrency control, or OCC, can achieve excellent performance on uncontended workloads for main-memory transactional databases. Contention causes OCC's performance to degrade, however, and recent concurrency control designs, such as hybrid OCC/locking systems and variations on multiversion concurrency control (MVCC), have claimed to outperform the best OCC systems. We evaluate several concurrency control designs under varying contention and varying workloads, including TPCC, and find that implementation choices unrelated to concurrency control may explain much of OCC's previously-reported degradation. When these implementation choices are made sensibly, OCC performance does not collapse on high-contention TPC-C. We also present two optimization techniques, commit-time updates and timestamp splitting, that can dramatically improve the highcontention performance of both OCC and MVCC. Though these techniques are known, we apply them in a new context and highlight their potency: when combined, they lead to performance gains of 3:4 for MVCC and 3:6 for OCC in a TPC-C workload.


