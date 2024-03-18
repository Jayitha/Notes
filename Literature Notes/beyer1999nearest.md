---
title: When is “Nearest neighbor” meaningful?
authors: Kevin Beyer, Jonathan Goldstein, Raghu Ramakrishnan, Uri Shaft
year: 1999
url: ""
Zotero URI: zotero://select/items/@beyer1999nearest
tags:
  - Kevin-Beyer
  - Jonathan-Goldstein
  - Raghu-Ramakrishnan
  - Uri-Shaft
  - reading
aliases:
  - When is “Nearest neighbor” meaningful?
---

# When is “Nearest neighbor” meaningful?  
_Kevin Beyer, Jonathan Goldstein, Raghu Ramakrishnan, Uri Shaft (1999)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> We explore the effect of dimensionality on the “nearest neighbor” problem. We show that under a broad set of conditions (much broader than independent and identically distributed dimensions), as dimensionality increases, the distance to the nearest data point approaches the distance to the farthest data point. To provide a practical perspective, we present empirical results on both real and synthetic data sets that demonstrate that this effect can occur for as few as 10–15 dimensions. These results should not be interpreted to mean that high-dimensional indexing is never meaningful; we illustrate this point by identifying some high-dimensional workloads for which this effect does not occur. However, our results do emphasize that the methodology used almost universally in the database literature to evaluate high-dimensional indexing techniques is flawed, and should be modified. In particular, most such techniques proposed in the literature are not evaluated versus simple linear scan, and are evaluated over workloads for which nearest neighbor is not meaningful. Often, even the reported experiments, when analyzed carefully, show that linear scan would outperform the techniques being proposed on the workloads studied in high (10–15) dimensionality!

- [[Unstable Nearest Neighbor Query]]
- [[Converges in Probability]]
- [[Slutsky's Theorem]]
- [[Weak Law of Large Numbers]]

Notation:

| Value                                  | Description                                                                                                                                        |
| -------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------- |
| $m$                                    | variable (eventually representing dimensionality) and convergence variable                                                                         |
| $F_{data_1},F_{data_{2}}, \ldots$      | sequence of data distributions                                                                                                                     |
| $F_{query_1}, F_{query_2}, \ldots$     | a sequence of query distributions                                                                                                                  |
| $n$                                    | number of samples from each distribution                                                                                                           |
| $\forall m\; P_{m,1}, \ldots, P_{m,n}$ | $n$ independent data points for each of $m$ data distributions                                                                                     |
| $Q_{m} \sim F_{query_m}$               | query point chosen idependantly of data points                                                                                                     |
| $0 < p < \infty$                       | constant                                                                                                                                           |
| $\forall m \; d_m$                     | function that takes a data point from $F_{data_m}$ and a query point from $F_{query_m}$ and returns non-negative real number (a distance function) |
| $DMIN_m$                               | $\min \{d_{m}(P_{m,i}, Q_{m}) \mid 1 \leq i \leq n\}$                                                                                              |
| $DMAX_m$                               | $\max \{d_{m}(P_{m,i}, Q_{m}) \mid 1 \leq i \leq n\}$                                                                                              |


> [!note] Instability Result
> If
> $$\lim_{m \rightarrow \infty} var\left ( \frac{\left(d_{m}\left(P_{m,1}, Q_{m}\right)\right)^{p}}{\mathbf{E}\left[\left(d_{m} \left(P_{m,1}, Q_{m}\right)\right)^{p}\right]} \right)=0$$
> Then for every $\epsilon > 0$
> $$\lim_{m \rightarrow \infty} P \left[DMAX_{m} \leq \left(1 + \epsilon\right) DMIN_{m}\right]=1$$

^1318ad

If the distance distribution behaves a certain way as $m$ increases (which is apparently common), then according to the [[#^1318ad|Instability Result]], all points converge to the same distance from the query point

Posted question [here](https://hackmd.io/@PjzB85_5Tum5GEZrVPegjw/BJZVZhrRp)












