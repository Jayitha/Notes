---
title: Indexing the Edges—a simple and yet efficient approach to high-dimensional indexing
authors: Beng Chin Ooi, Kian-Lee Tan, Cui Yu, Stephane Bressan
year: 2000
url: ""
Zotero URI: zotero://select/items/@ooi2000indexing
tags:
  - reading
---

# Indexing the Edges—a simple and yet efficient approach to high-dimensional indexing  
_Beng Chin Ooi, Kian-Lee Tan, Cui Yu, Stephane Bressan (2000)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> In this paper, we propose a new tunable index scheme, called iMinMax(O), that maps points in high dimensional spaces to single dimension values determined by their maximum or minimum values among all dimensions. By varying the tuning “knob” O, we can obtain different family of iMinMax structures that are optimized for different distributions of data sets. For a d-dimensional space, a range query need to be transformed into d subqueries. However, some of these subqueries can be pruned away without evaluation, further enhancing the efficiency of the scheme. Experimental results show that iMinMax(O) can outperform the more complex Pyramid technique by a wide margin.

Proposes [[iMinMax]]
The performance of hierarchical indexing structures like R-trees and R*-trees deteriorates rapidly with increasing dimensionality
The curse of dimensionality is so severe that the performance of hierarchical indexing structures is worse than a linear scan cite:[4, 5]
Some other approaches are the VA-file cite:[4] and the [[Pyramid Technique]] cite:[5]

