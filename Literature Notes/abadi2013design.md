---
title: "The design and implementation of modern column-oriented database systems"
authors: Daniel Abadi, Peter Boncz, Stavros Harizopoulos, Stratos Idreos, Samuel Madden, others
year: 2013
url: ""
Zotero URI: "zotero://select/items/@abadi2013design"
tags: to-read, Daniel-Abadi, Peter-Boncz, Stavros-Harizopoulos, Stratos-Idreos, Samuel-Madden, -others
aliases: The design and implementation of modern column-oriented database systems
---

# The design and implementation of modern column-oriented database systems  
_Daniel Abadi, Peter Boncz, Stavros Harizopoulos, Stratos Idreos, Samuel Madden, others (2013)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> In this article, we survey recent research on column-oriented database systems, or column-stores, where each attribute of a table is stored in a separate file or region on storage. Such databases have seen a resurgence in recent years with a rise in interest in analytic queries that perform scans and aggregates over large portions of a few columns of a table. The main advantage of a column-store is that it can access just the columns needed to answer such queries. We specifically focus on three influential research prototypes, MonetDB [46], MonetDB/X100 [18], and C-Store [86]. These systems have formed the basis for several well-known commercial column-store implementations. We describe their similarities and differences and discuss their specific architectural features for compression, late materialization, join processing, vectorization and adaptive indexing (database cracking).


