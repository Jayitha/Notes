---
title: "The pyramid-technique: Towards breaking the curse of dimensionality"
authors: Stefan Berchtold, Christian Böhm, Hans-Peter Kriegal
year: 1998
url: ""
Zotero URI: "zotero://select/items/@berchtold1998pyramid"
tags: to-read
---

# The pyramid-technique: Towards breaking the curse of dimensionality  
_Stefan Berchtold, Christian Böhm, Hans-Peter Kriegal (1998)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> In this paper, we propose the Pyramid-Technique, a new indexing method for high-dimensional data spaces. The Pyramid-Technique is highly adapted to range query processing using the maximum metric Lmax. In contrast to all other index structures, the performance of the Pyramid-Technique does not deteriorate when processing range queries on data of higher dimensionality. The Pyramid-Technique is based on a special partitioning strategy which is optimized for high-dimensional data. The basic idea is to divide the data space first into 2d pyramids sharing the center point of the space as a top. In a second step, the single pyramids are cut into slices parallel to the basis of the pyramid. These slices from the data pages. Furthermore, we show that this partition provides a mapping from the given d-dimensional space to a 1-dimensional space. Therefore, we are able to use a B+-tree to manage the transformed data. As an analytical evaluation of our technique for hypercube range queries and uniform data distribution shows, the Pyramid-Technique clearly outperforms index structures using other partitioning strategies. To demonstrate the practical relevance of our technique, we experimentally compared the Pyramid-Technique with the X-tree, the Hilbert R-tree, and the Linear Scan. The results of our experiments using both, synthetic and real data, demonstrate that the Pyramid-Technique outperforms the X-tree and the Hilbert R-tree by a factor of up to 14 (number of page accesses) and up to 2500 (total elapsed time) for range queries.

- Proposes [[Pyramid Technique]]
- None of the existing indexing techniques that provide good performance for low-dimensional data perform well for high dimensional data because of the [[Curse of Dimensionality]]
- Most existing high dimensional approaches (at that time) were extensions of multidimensional indices and therefore restricted to space partitioning
- An interesting observation this paper makes is that the 50%-quantile splitting strategy that most prior indexing strategies used to ensure storage utilization guarantees performs poorly in high-dimensions because the access probability of pages is close to 100%