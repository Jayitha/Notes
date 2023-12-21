---
title: "The HP AutoRAID hierarchical storage system"
authors: John Wilkes, Richard Golding, Carl Staelin, Tim Sullivan
year: 1996
url: ""
Zotero URI: "zotero://select/items/@wilkes1996hp"
tags: to-read, John-Wilkes, Richard-Golding, Carl-Staelin, Tim-Sullivan
aliases: The HP AutoRAID hierarchical storage system
---

# The HP AutoRAID hierarchical storage system  
_John Wilkes, Richard Golding, Carl Staelin, Tim Sullivan (1996)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> Configuring redundant disk arrays is a black art. To configure an array properly, a system administrator must understand the details of both the array and the workload it will support. Incorrect understanding of either, or changes in the workload over time, can lead to poor performance. We present a solution to this problem: a two-level storage hierarchy implemented inside a single disk-array controller. In the upper level of this hierarchy, two copies of active data are stored to provide full redundancy and excellent performance. In the lower level, RAID 5 parity protection is used to provide excellent storage cost for inactive data, at somewhat lower performance. The technology we describe in this article, know as HP AutoRAID, automatically and transparently manages migration of data blocks between these two levels as access patterns change. The result is a fully redundant storage system that is extremely easy to use, is suitable for a wide variety of workloads, is largely insensitive to dynamic workload changes, and performs much better than disk arrays with comparable numbers of spindles and much larger amounts of front-end RAM cache. Because the implementation of the HP AutoRAID technology is almost entirely in software, the additional hardware cost for these benefits is very small. We describe the HP AutoRAID technology in detail, provide performance data for an embodiment of it in a storage array, and summarize the results of simulation studies used to choose algorithms implemented in the array.


