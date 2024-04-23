---
aliases:
  - variance
tags:
  - review
papers:
---
[[bertsekas2008introduction]]
The variance of a random variable $X$ (denoted by $var(X)$) is a measure of dispersion of random variable $X$ around its [[Expectation|Mean]]. The variance is the [[Expectation|Expected Value]] of the random variable $(X - \E[X])^{2}$
$$var(X) = \E[(X - \E[X])^{2}]$$
See also [[Standard Deviation]]

You can compute the variance using the [[Expected Value Rule]]
$$var(X) = \sum\limits_{x} (x - \E[X])^{2} p_{X}(x)$$
The variance can also be computed using [[Moments]]
$$var(X) = \E[X^{2}] - (\E[X])^{2}$$
Let $Y$ be a random variable constructed as a linear function of random variable $X$. For instance
$$Y = aX + b$$
Where $a$ and $b$ are scalars. Then,
$$var(Y) = a^{2}\E[X]$$
The variance of a random variable $X$ is the same as that of the zero-mean random variable $\tilde{X} = X - \E[X]$
$$var(X) = var(X - \E[X])$$
