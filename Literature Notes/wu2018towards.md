---
title: "Towards a learning optimizer for shared clouds"
authors: Chenggang Wu, Alekh Jindal, Saeed Amizadeh, Hiren Patel, Wangchao Le, Shi Qiao, Sriram Rao
year: 2018
url: ""
Zotero URI: "zotero://select/items/@wu2018towards"
tags: to-read, Chenggang-Wu, Alekh-Jindal, Saeed-Amizadeh, Hiren-Patel, Wangchao-Le, Shi-Qiao, Sriram-Rao
aliases: Towards a learning optimizer for shared clouds
---

# Towards a learning optimizer for shared clouds  
_Chenggang Wu, Alekh Jindal, Saeed Amizadeh, Hiren Patel, Wangchao Le, Shi Qiao, Sriram Rao (2018)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> Query optimizers are notorious for inaccurate cost estimates, leading to poor performance. The root of the problem lies in inaccurate cardinality estimates, i.e., the size of intermediate (and final) results in a query plan. These estimates also determine the resources consumed in modern shared cloud infrastructures. In this paper, we present CARDLEARNER, a machine learning based approach to learn cardinality models from previous job executions and use them to predict the cardinalities in future jobs. The key intuition in our approach is that shared cloud workloads are often recurring and overlapping in nature, and so we could learn cardinality models for overlapping subgraph templates. We discuss various learning approaches and show how learning a large number of smaller models results in high accuracy and explainability. We further present an exploration technique to avoid learning bias by considering alternate join orders and learning cardinality models over them. We describe the feedback loop to apply the learned models back to future job executions. Finally, we show a detailed evaluation of our models (up to 5 orders of magnitude less error), query plans (60% applicability), performance (up to 100% faster, 3x fewer resources), and exploration (optimal in few 10s of executions).


