---
title: "A survey of B-tree logging and recovery techniques"
authors: Goetz Graefe
year: 2012
url: ""
Zotero URI: "zotero://select/items/@graefe2012survey"
tags: to-read, Goetz-Graefe
aliases: A survey of B-tree logging and recovery techniques
---

# A survey of B-tree logging and recovery techniques  
_Goetz Graefe (2012)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> B-trees have been ubiquitous in database management systems for several decades, and they serve in many other storage systems as well. Their basic structure and their basic operations are well understood including search, insertion, and deletion. However, implementation of transactional guarantees such as all-or-nothing failure atomicity and durability in spite of media and system failures seems to be difficult. High-performance techniques such as pseudo-deleted records, allocation-only logging, and transaction processing during crash recovery are widely used in commercial B-tree implementations but not widely understood. This survey collects many of these techniques as a reference for students, researchers, system architects, and software developers. Central in this discussion are physical data independence, separation of logical database contents and physical representation, and the concepts of user transactions and system transactions. Many of the techniques discussed are applicable beyond B-trees.


