---
title: "Column-stores vs. Row-stores: How different are they really?"
authors: Daniel J Abadi, Samuel R Madden, Nabil Hachem
year: 2008
url: ""
Zotero URI: "zotero://select/items/@abadi2008column"
tags: to-read, Daniel J-Abadi, Samuel R-Madden, Nabil-Hachem
aliases: "Column-stores vs. Row-stores: How different are they really?"
---

# Column-stores vs. Row-stores: How different are they really?  
_Daniel J Abadi, Samuel R Madden, Nabil Hachem (2008)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> There has been a significant amount of excitement and recent work on column-oriented database systems ("column-stores"). These database systems have been shown to perform more than an order of magnitude better than traditional row-oriented database systems ("row-stores") on analytical workloads such as those found in data warehouses, decision support, and business intelligence applications. The elevator pitch behind this performance difference is straightforward: column-stores are more I/O efficient for read-only queries since they only have to read from disk (or from memory) those attributes accessed by a query. This simplistic view leads to the assumption that one can obtain the performance benefits of a column-store using a row-store: either by vertically partitioning the schema, or by indexing every column so that columns can be accessed independently. In this paper, we demonstrate that this assumption is false. We compare the performance of a commercial row-store under a variety of different configurations with a column-store and show that the row-store performance is significantly slower on a recently proposed data warehouse benchmark. We then analyze the performance difference and show that there are some important differences between the two systems at the query executor level (in addition to the obvious differences at the storage layer level). Using the column-store, we then tease apart these differences, demonstrating the impact on performance of a variety of column-oriented query execution techniques, including vectorized query processing, compression, and a new join algorithm we introduce in this paper. We conclude that while it is not impossible for a row-store to achieve some of the performance advantages of a column-store, changes must be made to both the storage layer and the query executor to fully obtain the benefits of a column-oriented approach.

## References

```dataview
LIST file.frontmatter.title FROM outgoing([[]])
```