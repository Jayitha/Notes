---
title: "Wander join: Online aggregation via random walks"
authors: Feifei Li, Bin Wu, Ke Yi, Zhuoyue Zhao
year: 2016
url: ""
Zotero URI: "zotero://select/items/@li2016wander"
tags: to-read, Feifei-Li, Bin-Wu, Ke-Yi, Zhuoyue-Zhao
aliases: Wander join: Online aggregation via random walks
---

# Wander join: Online aggregation via random walks  
_Feifei Li, Bin Wu, Ke Yi, Zhuoyue Zhao (2016)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> Joins are expensive, and online aggregation over joins was proposed to mitigate the cost, which offers users a nice and flexible tradeoff between query efficiency and accuracy in a continuous, online fashion. However, the state-of-the-art approach, in both internal and external memory, is based on ripple join, which is still very expensive and even needs unrealistic assumptions (e.g., tuples in a table are stored in random order). This paper proposes a new approach, the wander join algorithm, to the online aggregation problem by performing random walks over the underlying join graph. We also design an optimizer that chooses the optimal plan for conducting the random walks without having to collect any statistics a priori. Compared with ripple join, wander join is particularly efficient for equality joins involving multiple tables, but also supports θ-joins. Selection predicates and group-by clauses can be handled as well. Extensive experiments using the TPC-H benchmark have demonstrated the superior performance of wander join over ripple join. In particular, we have integrated and tested wander join in the latest version of PostgreSQL, demonstrating its practicality in a full-fledged database system.


