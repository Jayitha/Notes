---
title: "Efficient locking for concurrent operations on B-trees"
authors: Philip L Lehman, S Bing Yao
year: 1981
url: ""
Zotero URI: "zotero://select/items/@lehman1981efficient"
tags: to-read, Philip L-Lehman, S Bing-Yao
aliases: Efficient locking for concurrent operations on B-trees
---

# Efficient locking for concurrent operations on B-trees  
_Philip L Lehman, S Bing Yao (1981)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> The B-tree and its variants have been found to be highly useful (both theoretically and in practice) for storing large amounts of information, especially on secondary storage devices. We examine the problem of overcoming the inherent difficulty of concurrent operations on such structures, using a practical storage model. A single additional “link” pointer in each node allows a process to easily recover from tree modifications performed by other concurrent processes. Our solution compares favorably with earlier solutions in that the locking scheme is simpler (no read-locks are used) and only a (small) constant number of nodes are locked by any update process at any given time. An informal correctness proof for our system is given.


