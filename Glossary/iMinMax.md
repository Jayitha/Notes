---
aliases: 
tags:
  - indexing
papers: "[[ooi2000indexing]]"
---
# `=this.file.name`($\theta$)
Aliases: _`=join(this.file.aliases)`_
Papers: [`=join(this.file.frontmatter.papers)`]
Tags: `=join(this.file.tags, " ")`

[[ooi2000indexing]]
- Maps points in high dimensional spaces to single dimension values determined by their maximum or minimum values amongst all their dimensions
- $\theta$ is a tunable parameter that can be adapted for different data distributions

iMinMax has three notable features
1. Adopts a simple transformation function from high dimensions to single dimension. Let $x_{min}$ and $x_{max}$ be the minimum and maximum value of a point $x$ across all dimensions ($d_{min}$ and $d_{max}$ resp.). The mapping is given as follows
$$y = \begin{cases} d_{min} + x_{min} & if \; x_{min} + \theta < 1 - x_{max}\\d_{max} + x_{max} & otherwise\end{cases}$$
This transformation partitions the data based on the dimension which has the largest or smallest value. 
2. The single dimension values can be then indexed using a B+-Tree index and hence the iMinMax index can be used on top of existing DBMS
3. The range query needs to be transformed. The transformation involves generating a range query on each dimension. The intersection of all range query answers is a superset of the required solution set. This is supposedly still efficient because
	1. The produced candidate set cannot be further pruned without losing out critical candidates
	2. The search space is reduced and 
	3. some range subqueries can be pruned without being evaluated
4. By varying $\theta$, you end up constructing different families of iMinMax index structures. At extremes, you map all data points to their maximum (minimum) value. At other values of $\theta$, you partition data points based on the dimensions which has max/min values

Unlike the [[Pyramid Technique]], this index performs well on skewed distributions as well. 


The value of $x_{min}$ and $x_{max}$ varies between 0->1. Therefore, the elements that get indexed using the first dimension usually range between $0-1$, the elements that get ranged in the second dimension range between $1-2$ and so on.

Lets say you have a range query $q$ with $j$th query subrange $[x_{j1}, x_{j2}]$, the subquery $q_{j}$ is given by

$$q_{j} = \begin{cases} \left[j + max_{i=1}^{d} x_{i1},\; j + x_{j2}\right] & min_{i = 1}^{d}x_{i1} + \theta \geq 1 - max_{i = 1}^{d} x_{i1} \\
\left[j + x_{j1},\; j + min_{i = 1}^{d} x_{i2}\right] & min_{i = 1}^{d} x_{i2} + \theta < 1 - max_{i = 1}^{d} x_{i2}\\
\left[j + x_{j1},\; j + x_{j2}\right] & otherwise\end{cases} $$

- 

I'd love to test this indexing structure to see how it behaves. In high dimensions where NN is meaningless, does the iMinMax indexing improve upon simple scanning? What would the evaluation metrics look like?

1. Number of tuples accessed?
2. Collisions?
3. Is the added space overhead worth it?
4. Point query vs Range query
5. Selectivity of the range query

From the Database Encyclopedia, approaches to handle high dimensional indexing include

1. Dimensionality reduction
2. Data compression
3. Optimized I/O schedules (page size optimization and fast index scan)
4. Hierarchy flattening
5. Optimizing the shape of page regions
6. Clustering


















