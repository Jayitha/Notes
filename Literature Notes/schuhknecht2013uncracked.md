---
title: "The uncracked pieces in database cracking"
authors: Felix Martin Schuhknecht, Alekh Jindal, Jens Dittrich
year: 2013
url: ""
Zotero URI: "zotero://select/items/@schuhknecht2013uncracked"
tags: to-read, Felix Martin-Schuhknecht, Alekh-Jindal, Jens-Dittrich
aliases: The uncracked pieces in database cracking
---

# The uncracked pieces in database cracking  
_Felix Martin Schuhknecht, Alekh Jindal, Jens Dittrich (2013)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> Database cracking has been an area of active research in recent years. The core idea of database cracking is to create indexes adaptively and incrementally as a side-product of query processing. Several works have proposed different cracking techniques for different aspects including updates, tuple-reconstruction, convergence, concurrency-control, and robustness. However, there is a lack of any comparative study of these different methods by an independent group. In this paper, we conduct an experimental study on database cracking. Our goal is to critically review several aspects, identify the potential, and propose promising directions in database cracking. With this study, we hope to expand the scope of database cracking and possibly leverage cracking in database engines other than MonetDB. We repeat several prior database cracking works including the core cracking algorithms as well as three other works on convergence (hybrid cracking), tuple-reconstruction (sideways cracking), and robustness (stochastic cracking) respectively. We evaluate these works and show possible directions to do even better. We further test cracking under a variety of experimental settings, including high selectivity queries, low selectivity queries, and multiple query access patterns. Finally, we compare cracking against different sorting algorithms as well as against different main-memory optimised indexes, including the recently proposed Adaptive Radix Tree (ART). Our results show that: (i) the previously proposed cracking algorithms are repeatable, (ii) there is still enough room to significantly improve the previously proposed cracking algorithms, (iii) cracking depends heavily on query selectivity, (iv) cracking needs to catch up with modern indexing trends, and (v) different indexing algorithms have different indexing signatures.


