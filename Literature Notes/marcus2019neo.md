---
title: "Neo: A learned query optimizer"
authors: Ryan Marcus, Parimarjan Negi, Hongzi Mao, Chi Zhang, Mohammad Alizadeh, Tim Kraska, Olga Papaemmanouil, Nesime Tatbul
year: 2019
url: ""
Zotero URI: "zotero://select/items/@marcus2019neo"
tags: to-read, Ryan-Marcus, Parimarjan-Negi, Hongzi-Mao, Chi-Zhang, Mohammad-Alizadeh, Tim-Kraska, Olga-Papaemmanouil, Nesime-Tatbul
aliases: Neo: A learned query optimizer
---

# Neo: A learned query optimizer  
_Ryan Marcus, Parimarjan Negi, Hongzi Mao, Chi Zhang, Mohammad Alizadeh, Tim Kraska, Olga Papaemmanouil, Nesime Tatbul (2019)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> Query optimization is one of the most challenging problems in database systems. Despite the progress made over the past decades, query optimizers remain extremely complex components that require a great deal of hand-tuning for specific workloads and datasets. Motivated by this shortcoming and inspired by recent advances in applying machine learning to data management challenges, we introduce Neo (Neural Optimizer), a novel learning-based query optimizer that relies on deep neural networks to generate query executions plans. Neo bootstraps its query optimization model from existing optimizers and continues to learn from incoming queries, building upon its successes and learning from its failures. Furthermore, Neo naturally adapts to underlying data patterns and is robust to estimation errors. Experimental results demonstrate that Neo, even when bootstrapped from a simple optimizer like PostgreSQL, can learn a model that offers similar performance to state-of-the-art commercial optimizers, and in some cases even surpass them.


