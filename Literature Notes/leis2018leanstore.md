---
title: "LeanStore: In-memory data management beyond main memory"
authors: Viktor Leis, Michael Haubenschild, Alfons Kemper, Thomas Neumann
year: 2018
url: ""
Zotero URI: "zotero://select/items/@leis2018leanstore"
tags: to-read, Viktor-Leis, Michael-Haubenschild, Alfons-Kemper, Thomas-Neumann
aliases: LeanStore: In-memory data management beyond main memory
---

# LeanStore: In-memory data management beyond main memory  
_Viktor Leis, Michael Haubenschild, Alfons Kemper, Thomas Neumann (2018)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> Disk-based database systems use buffer managers in order to transparently manage data sets larger than main memory. This traditional approach is effective at minimizing the number of I/O operations, but is also the major source of overhead in comparison with in-memory systems. To avoid this overhead, in-memory database systems therefore abandon buffer management altogether, which makes handling data sets larger than main memory very difficult. In this work, we revisit this fundamental dichotomy and design a novel storage manager that is optimized for modern hardware. Our evaluation, which is based on TPC-C and micro benchmarks, shows that our approach has little overhead in comparison with a pure in-memory system when all data resides in main memory. At the same time, like a traditional buffer manager, it is fully transparent and can manage very large data sets effectively. Furthermore, due to low-overhead synchronization, our implementation is also highly scalable on multi-core CPUs.


