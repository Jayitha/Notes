---
title: "Integrating compression and execution in column-oriented database systems"
authors: Daniel Abadi, Samuel Madden, Miguel Ferreira
year: 2006
url: ""
Zotero URI: "zotero://select/items/@abadi2006integrating"
tags: to-read, Daniel-Abadi, Samuel-Madden, Miguel-Ferreira
aliases: Integrating compression and execution in column-oriented database systems
---

# Integrating compression and execution in column-oriented database systems  
_Daniel Abadi, Samuel Madden, Miguel Ferreira (2006)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> Column-oriented database system architectures invite a re-evaluation of how and when data in databases is compressed. Storing data in a column-oriented fashion greatly increases the similarity of adjacent records on disk and thus opportunities for compression. The ability to compress many adjacent tuples at once lowers the per-tuple cost of compression, both in terms of CPU and space overheads.In this paper, we discuss how we extended C-Store (a column-oriented DBMS) with a compression sub-system. We show how compression schemes not traditionally used in row-oriented DBMSs can be applied to column-oriented systems. We then evaluate a set of compression schemes and show that the best scheme depends not only on the properties of the data but also on the nature of the query workload.

## References

```dataview
LIST file.frontmatter.title FROM outgoing([[]])
```