---
aliases: 
tags:
  - review
papers:
---
[[bertsekas2008introduction]]
In $n$ independent [[Bernoulli Trials]] with probability of success of each trial $p$ (and failure $1-p$), we model the number of successes observed as a *Binomial random variable* with parameters $n$ and $p$.
$$
X \in \{0,\ldots,n\}
$$
and its [[Probability Mass Function|PMF]] is given by
$$p_{X}(k) = \P[X = k] = {n \choose k}p^{k}(1-p)^{n-k}$$
The [[Expectation|mean]] and [[Variance|variance]] are given by
$$\E[X] = np \quad var(X) = np(1 - p)$$
