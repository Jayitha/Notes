---
title: "High-performance concurrency control mechanisms for main-memory databases"
authors: Per-Åke Larson, Spyros Blanas, Cristian Diaconu, Craig Freedman, Jignesh M Patel, Mike Zwilling
year: 2011
url: ""
Zotero URI: "zotero://select/items/@larson2011high"
tags: to-read, Per-Åke-Larson, Spyros-Blanas, Cristian-Diaconu, Craig-Freedman, Jignesh M-Patel, Mike-Zwilling
aliases: High-performance concurrency control mechanisms for main-memory databases
---

# High-performance concurrency control mechanisms for main-memory databases  
_Per-Åke Larson, Spyros Blanas, Cristian Diaconu, Craig Freedman, Jignesh M Patel, Mike Zwilling (2011)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> A database system optimized for in-memory storage can support much higher transaction rates than current systems. However, standard concurrency control methods used today do not scale to the high transaction rates achievable by such systems. In this paper we introduce two efficient concurrency control methods specifically designed for main-memory databases. Both use multiversioning to isolate read-only transactions from updates but differ in how atomicity is ensured: one is optimistic and one is pessimistic. To avoid expensive context switching, transactions never block during normal processing but they may have to wait before commit to ensure correct serialization ordering. We also implemented a main-memory optimized version of single-version locking. Experimental results show that while single-version locking works well when transactions are short and contention is low performance degrades under more demanding conditions. The multiversion schemes have higher overhead but are much less sensitive to hotspots and the presence of long-running transactions.


