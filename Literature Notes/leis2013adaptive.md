---
title: "The adaptive radix tree: ARTful indexing for main-memory databases"
authors: Viktor Leis, Alfons Kemper, Thomas Neumann
year: 2013
url: ""
Zotero URI: zotero://select/items/@leis2013adaptive
tags:
  - Viktor-Leis
  - Alfons-Kemper
  - Thomas-Neumann
  - read
aliases:
  - "The adaptive radix tree: ARTful indexing for main-memory databases"
---

# The adaptive radix tree: ARTful indexing for main-memory databases  
_Viktor Leis, Alfons Kemper, Thomas Neumann (2013)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> Main memory capacities have grown up to a point where most databases fit into RAM. For main-memory database systems, index structure performance is a critical bottleneck. Traditional in-memory data structures like balanced binary search trees are not efficient on modern hardware, because they do not optimally utilize on-CPU caches. Hash tables, also often used for main-memory indexes, are fast but only support point queries. To overcome these shortcomings, we present ART, an adaptive radix tree (trie) for efficient indexing in main memory. Its lookup performance surpasses highly tuned, read-only search trees, while supporting very efficient insertions and deletions as well. At the same time, ART is very space efficient and solves the problem of excessive worst-case space consumption, which plagues most radix trees, by adaptively choosing compact and efficient data structures for internal nodes. Even though ART's performance is comparable to hash tables, it maintains the data in sorted order, which enables additional operations like range scan and prefix lookup.


## References

```dataview
LIST file.frontmatter.title FROM outgoing([[]])
```
