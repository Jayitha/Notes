---
title: "How good are query optimizers, really?"
authors: Viktor Leis, Andrey Gubichev, Atanas Mirchev, Peter Boncz, Alfons Kemper, Thomas Neumann
year: 2015
url: ""
Zotero URI: "zotero://select/items/@leis2015good"
tags: to-read, Viktor-Leis, Andrey-Gubichev, Atanas-Mirchev, Peter-Boncz, Alfons-Kemper, Thomas-Neumann
aliases: How good are query optimizers, really?
---

# How good are query optimizers, really?  
_Viktor Leis, Andrey Gubichev, Atanas Mirchev, Peter Boncz, Alfons Kemper, Thomas Neumann (2015)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> Finding a good join order is crucial for query performance. In this paper, we introduce the Join Order Benchmark (JOB) and experimentally revisit the main components in the classic query optimizer architecture using a complex, real-world data set and realistic multi-join queries. We investigate the quality of industrial-strength cardinality estimators and find that all estimators routinely produce large errors. We further show that while estimates are essential for finding a good join order, query performance is unsatisfactory if the query engine relies too heavily on these estimates. Using another set of experiments that measure the impact of the cost model, we find that it has much less influence on query performance than the cardinality estimates. Finally, we investigate plan enumeration techniques comparing exhaustive dynamic programming with heuristic algorithms and find that exhaustive enumeration improves performance despite the sub-optimal cardinality estimates.


