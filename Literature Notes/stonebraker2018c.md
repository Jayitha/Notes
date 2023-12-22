---
title: "C-store: A column-oriented DBMS"
authors: Mike Stonebraker, Daniel J Abadi, Adam Batkin, Xuedong Chen, Mitch Cherniack, Miguel Ferreira, Edmond Lau, Amerson Lin, Sam Madden, Elizabeth O'Neil, others
year: 2005
url: ""
Zotero URI: "zotero://select/items/@stonebraker2018c"
tags: to-read, Mike-Stonebraker, Daniel J-Abadi, Adam-Batkin, Xuedong-Chen, Mitch-Cherniack, Miguel-Ferreira, Edmond-Lau, Amerson-Lin, Sam-Madden, Elizabeth-O'Neil, -others
aliases: C-store: A column-oriented DBMS
---

# C-store: A column-oriented DBMS  
_Mike Stonebraker, Daniel J Abadi, Adam Batkin, Xuedong Chen, Mitch Cherniack, Miguel Ferreira, Edmond Lau, Amerson Lin, Sam Madden, Elizabeth O'Neil, others (2005)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> This paper presents the design of a read-optimized relational DBMS that contrasts sharply with most current systems, which are write-optimized. Among the many differences in its design are: storage of data by column rather than by row, careful coding and packing of objects into storage including main memory during query processing, storing an overlapping collection of column-oriented projections, rather than the current fare of tables and indexes, a non-traditional implementation of transactions which includes high availability and snapshot isolation for read-only transactions, and the extensive use of bitmap indexes to complement B-tree structures. We present preliminary performance data on a subset of TPC-H and show that the system we are building, C-Store, is substantially faster than popular commercial products. Hence, the architecture looks very encouraging.


