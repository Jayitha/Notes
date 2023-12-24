---
title: "Fast serializable multi-version concurrency control for main-memory database systems"
authors: Thomas Neumann, Tobias Mühlbauer, Alfons Kemper
year: 2015
url: ""
Zotero URI: "zotero://select/items/@neumann2015fast"
tags: to-read, Thomas-Neumann, Tobias-Mühlbauer, Alfons-Kemper
aliases: Fast serializable multi-version concurrency control for main-memory database systems
---

# Fast serializable multi-version concurrency control for main-memory database systems  
_Thomas Neumann, Tobias Mühlbauer, Alfons Kemper (2015)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> Multi-Version Concurrency Control (MVCC) is a widely employed concurrency control mechanism, as it allows for execution modes where readers never block writers. However, most systems implement only snapshot isolation (SI) instead of full serializability. Adding serializability guarantees to existing SI implementations tends to be prohibitively expensive. We present a novel MVCC implementation for main-memory database systems that has very little overhead compared to serial execution with single-version concurrency control, even when maintaining serializability guarantees. Updating data in-place and storing versions as before-image deltas in undo buffers not only allows us to retain the high scan performance of single-version systems but also forms the basis of our cheap and fine-grained serializability validation mechanism. The novel idea is based on an adaptation of precision locking and verifies that the (extensional) writes of recently committed transactions do not intersect with the (intensional) read predicate space of a committing transaction. We experimentally show that our MVCC model allows very fast processing of transactions with point accesses as well as read-heavy transactions and that there is little need to prefer SI over full serializability any longer.


