---
aliases: 
tags: 
papers: "[[berchtold1998pyramid]]"
---
# `=this.file.name`
Aliases: _`=join(this.file.aliases)`_
Papers: [`=join(this.file.frontmatter.papers)`]
Tags: `=join(this.file.tags, " ")`

[[berchtold1998pyramid]]
- Indexing technique for high-dimensional data spaces
- Adapted to range query processing using the [[Chebyshev Metric|Maximum Metric]] $L_{max}$ 

> The basic idea is divide the data space such that the resulting partitions are shaped like peels of an onion

Two major steps
Step 1: Divide the $d$-dimensional space into $2d$ pyramids having the center point of the space as their top.
Step 2: Single pyramids are cut into slices parallel to the basis of the pyramid forming the data pages.

The paper [[berchtold1998pyramid]] states that unlike other indexing structures, the performance of the pyramid technique is not impacted by the [[Curse of Dimensionality]], in fact, the performance improves as the dimensionality of the space increases. 

> It's important to note that these observations are made for hypercube queries and uniform data distributions. Queries which touch the boundary of the data space or very skewed queries are handled less efficiently. 

This technique maps the given $d$-dimensional data space into a $1$-dimensional data space so we can use B-Tree indexing.

## Data Space Partitioning

 




- 
- 
- 




















