---
aliases:
  - Mean
  - Expected Value
  - expectation
  - mean
  - expected value
tags:
  - review
papers:
---
[[bertsekas2008introduction]]
The expected value (or *Expectation* or *Mean*) of a random variable $X$, with [[Probability Mass Function|PMF]] $p_{X}$ is
$$\E[X] = \sum\limits_{x} xp_{X}(x)$$
The Mean can also be viewed as the *center of gravity* of the [[Probability Mass Function|PMF]] associated with the random variable $X$

Let $Y$ be a random variable constructed as a linear function of random variable $X$. For instance
$$Y = aX + b$$
Where $a$ and $b$ are scalars. Then,
$$\E[Y] = a\E[X] + b$$

In general, for any random variables $X_{1}, X_{2}, \ldots, X_{n}$ and scalars $a_{1}, a_{2}, \ldots, a_{n}$
$$\E[a_{1}X_{1} + a_{2}X_{2} + \cdots + a_{n}X_{n}] = a_{1}\E[X_{1}] + a_{2}\E[X_{2}] + \cdots + a_{n}\E[X_{n}]$$
You can also define the *conditional expectation* of $X$ given event $A$ with $\P[A] > 0$ or another instantiated random variable $Y = y$
$$\E[X \mid A] = \sum\limits_{x} x p_{X \mid A} (x) \qquad \E[X \mid Y = y] = \sum\limits_{x} x p_{X \mid Y}(x \mid y)$$
