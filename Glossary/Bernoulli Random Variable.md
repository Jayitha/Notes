---
aliases: 
tags:
  - review
papers:
---
[[bertsekas2008introduction]]
The Bernoulli random variable takes two values - $1$ with probability $p$ and $0$ with probability $1 - p$
$$
X = \begin{cases}
1 & \text{if success} \\
0 & \text{if fails}
\end{cases}
$$
Its [[Probability Mass Function|PMF]] is
$$
p_{X}(k) = \begin{cases}
p & \text{if } k = 1 \\
1 - p & \text{if } k = 0
\end{cases}
$$

The [[Expectation|Mean]], 2nd [[Moments|Moment]] and [[Variance]] are
$$
\begin{aligned}
\E[X] &= p\\
\E[X^{2}] &= p\\
var(X) &= p(1 - p)
\end{aligned}
$$

