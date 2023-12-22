---
title: "A comparison of approaches to large-scale data analysis"
authors: Andrew Pavlo, Erik Paulson, Alexander Rasin, Daniel J Abadi, David J DeWitt, Samuel Madden, Michael Stonebraker
year: 2009
url: ""
Zotero URI: "zotero://select/items/@pavlo2009comparison"
tags: to-read, Andrew-Pavlo, Erik-Paulson, Alexander-Rasin, Daniel J-Abadi, David J-DeWitt, Samuel-Madden, Michael-Stonebraker
aliases: A comparison of approaches to large-scale data analysis
---

# A comparison of approaches to large-scale data analysis  
_Andrew Pavlo, Erik Paulson, Alexander Rasin, Daniel J Abadi, David J DeWitt, Samuel Madden, Michael Stonebraker (2009)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> There is currently considerable enthusiasm around the MapReduce (MR) paradigm for large-scale data analysis [17]. Although the basic control flow of this framework has existed in parallel SQL database management systems (DBMS) for over 20 years, some have called MR a dramatically new computing model [8, 17]. In this paper, we describe and compare both paradigms. Furthermore, we evaluate both kinds of systems in terms of performance and development complexity. To this end, we define a benchmark consisting of a collection of tasks that we have run on an open source version of MR as well as on two parallel DBMSs. For each task, we measure each system's performance for various degrees of parallelism on a cluster of 100 nodes. Our results reveal some interesting trade-offs. Although the process to load data into and tune the execution of parallel DBMSs took much longer than the MR system, the observed performance of these DBMSs was strikingly better. We speculate about the causes of the dramatic performance difference and consider implementation concepts that future systems should take from both kinds of architectures.


