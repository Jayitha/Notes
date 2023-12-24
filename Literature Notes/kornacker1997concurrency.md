---
title: "Concurrency and recovery in generalized search trees"
authors: Marcel Kornacker, C Mohan, Joseph M Hellerstein
year: 1997
url: ""
Zotero URI: "zotero://select/items/@kornacker1997concurrency"
tags: to-read, Marcel-Kornacker, C-Mohan, Joseph M-Hellerstein
aliases: Concurrency and recovery in generalized search trees
---

# Concurrency and recovery in generalized search trees  
_Marcel Kornacker, C Mohan, Joseph M Hellerstein (1997)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> This paper presents general algorithms for concurrency control in tree-based access methods as well as a recovery protocol and a mechanism for ensuring repeatable read. The algorithms are developed in the context of the Generalized Search Tree (GiST) data structure, an index structure supporting an extensible set of queries and data types. Although developed in a GiST context, the algorithms are generally applicable to many tree-based access methods. The concurrency control protocol is based on an extension of the link technique originally developed for B-trees, and completely avoids holding node locks during I/Os. Repeatable read isolation is achieved with a novel combination of predicate locks and two-phase locking of data records. To our knowledge, this is the first time that isolation issues have been addressed outside the context of B-trees. A discussion of the fundamental structural differences between B-trees and more general tree structures like GiSTs explains why the algorithms developed here deviate from their B-tree counterparts. An implementation of GiSTs emulating B-trees in DB2/Common Server is underway.


