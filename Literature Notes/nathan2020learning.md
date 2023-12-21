---
title: "Learning multi-dimensional indexes"
authors: Vikram Nathan, Jialin Ding, Mohammad Alizadeh, Tim Kraska
year: 2020
url: ""
Zotero URI: "zotero://select/items/@nathan2020learning"
tags: to-read, Vikram-Nathan, Jialin-Ding, Mohammad-Alizadeh, Tim-Kraska
aliases: Learning multi-dimensional indexes
---

# Learning multi-dimensional indexes  
_Vikram Nathan, Jialin Ding, Mohammad Alizadeh, Tim Kraska (2020)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> Scanning and filtering over multi-dimensional tables are key operations in modern analytical database engines. To optimize the performance of these operations, databases often create clustered indexes over a single dimension or multi-dimensional indexes such as R-Trees, or use complex sort orders (e.g., Z-ordering). However, these schemes are often hard to tune and their performance is inconsistent across different datasets and queries. In this paper, we introduce Flood, a multi-dimensional in-memory read-optimized index that automatically adapts itself to a particular dataset and workload by jointly optimizing the index structure and data storage layout. Flood achieves up to three orders of magnitude faster performance for range scans with predicates than state-of-the-art multi-dimensional indexes or sort orders on real-world datasets and workloads. Our work serves as a building block towards an end-to-end learned database system.


