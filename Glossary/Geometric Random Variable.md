---
aliases: 
tags:
  - review
papers:
---
[[bertsekas2008introduction]]
In independent [[Bernoulli Trials]] with probability of success of each trial $p$ (and failure $1-p$), we model the number of trials needed to observe the first success as a *Geometric* random variable parameterized by the probability of success $p$.
$$
X \in \{1, 2, \ldots\}
$$
its [[Probability Mass Function|PMF]] is
$$p_{X}(k) = (1-p)^{k-1}p$$
You can prove that the sum of all probabilities of values of the PMF is $1$ using the formula for the [[Sum of Infinite Geometric Sequence]]

The [[Expectation|mean]], 2nd [[Moments|moment]] and [[Variance|variance]] are
$$
\E[X] = \frac{1}{p} \quad \E[X^{2}] = \frac{1 + 2(1 - p)\E[X]}{p} \quad var(X) = \frac{1 - p}{p^{2}}
$$