---
title: "Everything you always wanted to know about compiled and vectorized queries but were afraid to ask"
authors: Timo Kersten, Viktor Leis, Alfons Kemper, Thomas Neumann, Andrew Pavlo, Peter Boncz
year: 2018
url: ""
Zotero URI: "zotero://select/items/@kersten2018everything"
tags: to-read, Timo-Kersten, Viktor-Leis, Alfons-Kemper, Thomas-Neumann, Andrew-Pavlo, Peter-Boncz
aliases: Everything you always wanted to know about compiled and vectorized queries but were afraid to ask
---

# Everything you always wanted to know about compiled and vectorized queries but were afraid to ask  
_Timo Kersten, Viktor Leis, Alfons Kemper, Thomas Neumann, Andrew Pavlo, Peter Boncz (2018)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> The query engines of most modern database systems are either based on vectorization or data-centric code generation. These two state-of-the-art query processing paradigms are fundamentally different in terms of system structure and query execution code. Both paradigms were used to build fast systems. However, until today it is not clear which paradigm yields faster query execution, as many implementation-specific choices obstruct a direct comparison of architectures. In this paper, we experimentally compare the two models by implementing both within the same test system. This allows us to use for both models the same query processing algorithms, the same data structures, and the same parallelization framework to ultimately create an apples-to-apples comparison. We find that both are efficient, but have different strengths and weaknesses. Vectorization is better at hiding cache miss latency, whereas data-centric compilation requires fewer CPU instructions, which benefits cache-resident workloads. Besides raw, single-threaded performance, we also investigate SIMD as well as multi-core parallelization and different hardware architectures. Finally, we analyze qualitative differences as a guide for system architects.


