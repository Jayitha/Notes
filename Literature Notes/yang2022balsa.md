---
title: "Balsa: Learning a query optimizer without expert demonstrations"
authors: Zongheng Yang, Wei-Lin Chiang, Sifei Luan, Gautam Mittal, Michael Luo, Ion Stoica
year: 2022
url: ""
Zotero URI: "zotero://select/items/@yang2022balsa"
tags: to-read, Zongheng-Yang, Wei-Lin-Chiang, Sifei-Luan, Gautam-Mittal, Michael-Luo, Ion-Stoica
aliases: "Balsa: Learning a query optimizer without expert demonstrations"
---

# Balsa: Learning a query optimizer without expert demonstrations  
_Zongheng Yang, Wei-Lin Chiang, Sifei Luan, Gautam Mittal, Michael Luo, Ion Stoica (2022)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> Query optimizers are a performance-critical component in every database system. Due to their complexity, optimizers take experts months to write and years to refine. In this work, we demonstrate for the first time that learning to optimize queries without learning from an expert optimizer is both possible and efficient. We present Balsa, a query optimizer built by deep reinforcement learning. Balsa first learns basic knowledge from a simple, environment-agnostic simulator, followed by safe learning in real execution. On the Join Order Benchmark, Balsa matches the performance of two expert query optimizers, both open-source and commercial, with two hours of learning, and outperforms them by up to 2.8× in workload runtime after a few more hours. Balsa thus opens the possibility of automatically learning to optimize in future compute environments where expert-designed optimizers do not exist.


