---
title: "Bao: Making learned query optimization practical"
authors: Ryan Marcus, Parimarjan Negi, Hongzi Mao, Nesime Tatbul, Mohammad Alizadeh, Tim Kraska
year: 2021
url: ""
Zotero URI: "zotero://select/items/@marcus2021bao"
tags: to-read, Ryan-Marcus, Parimarjan-Negi, Hongzi-Mao, Nesime-Tatbul, Mohammad-Alizadeh, Tim-Kraska
aliases: Bao: Making learned query optimization practical
---

# Bao: Making learned query optimization practical  
_Ryan Marcus, Parimarjan Negi, Hongzi Mao, Nesime Tatbul, Mohammad Alizadeh, Tim Kraska (2021)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> Recent efforts applying machine learning techniques to query optimization have shown few practical gains due to substantive training overhead, inability to adapt to changes, and poor tail performance. Motivated by these difficulties, we introduce Bao (the \underlineBa ndit \underlineo ptimizer). Bao takes advantage of the wisdom built into existing query optimizers by providing per-query optimization hints. Bao combines modern tree convolutional neural networks with Thompson sampling, a well-studied reinforcement learning algorithm. As a result, Bao automatically learns from its mistakes and adapts to changes in query workloads, data, and schema. Experimentally, we demonstrate that Bao can quickly learn strategies that improve end-to-end query execution performance, including tail latency, for several workloads containing long-running queries. In cloud environments, we show that Bao can offer both reduced costs and better performance compared with a commercial system.


