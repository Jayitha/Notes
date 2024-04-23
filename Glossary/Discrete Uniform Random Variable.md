---
aliases:
  - discrete uniform random variable
tags:
  - review
papers:
---
[[bertsekas2008introduction]]
The *discrete uniform random variable* takes one out of a range of contiguous integer values with equal probability. This random variable is parameterized by the limits of the interval $[a, b]$
$$
p_{X}(k) = \begin{cases}
\frac{1}{b - a + 1} & k \in [a, b] \\
0 & otherwise
\end{cases}
$$
The [[Expectation|Mean]] and [[Variance]] are
$$
\begin{aligned}
\E[X] &= \frac{a + b}{2}\\
var(X) &= \frac{(b - a + 1)^{2} - 1}{12}
\end{aligned}
$$
