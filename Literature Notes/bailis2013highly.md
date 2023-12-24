---
title: "Highly available transactions: Virtues and limitations (extended version)"
authors: Peter Bailis, Aaron Davidson, Alan Fekete, Ali Ghodsi, Joseph M Hellerstein, Ion Stoica
year: 2013
url: ""
Zotero URI: "zotero://select/items/@bailis2013highly"
tags: to-read, Peter-Bailis, Aaron-Davidson, Alan-Fekete, Ali-Ghodsi, Joseph M-Hellerstein, Ion-Stoica
aliases: Highly available transactions: Virtues and limitations (extended version)
---

# Highly available transactions: Virtues and limitations (extended version)  
_Peter Bailis, Aaron Davidson, Alan Fekete, Ali Ghodsi, Joseph M Hellerstein, Ion Stoica (2013)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> To minimize network latency and remain online during server failures and network partitions, many modern distributed data storage systems eschew transactional functionality, which provides strong semantic guarantees for groups of multiple operations over multiple data items. In this work, we consider the problem of providing Highly Available Transactions (HATs): transactional guarantees that do not suffer unavailability during system partitions or incur high network latency. We introduce a taxonomy of highly available systems and analyze existing ACID isolation and distributed data consistency guarantees to identify which can and cannot be achieved in HAT systems. This unifies the literature on weak transactional isolation, replica consistency, and highly available systems. We analytically and experimentally quantify the availability and performance benefits of HATs–often two to three orders of magnitude over wide-area networks–and discuss their necessary semantic compromises.


