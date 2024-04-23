---
aliases:
  - PMF
tags:
  - review
papers:
---
[[bertsekas2008introduction]]
A [[Discrete Random Variable]] has an associated *Probability Mass Function (PMF)*, which gives the probability of each numerical value that the random variable can take

The PMF of a discrete random variable $X$ is denoted by $p_X$

To calculate the PMF of a random variable $X$, for each possible value $x$ of $X$
1. Collect all the possible outcomes that give rise to the event $\{X = x\}$
2. Add their probabilities to get $p_X(x)$

You can also define the PMF of two random variables $X$ and $Y$ *jointly*
$$p_{X,Y}(x, y) = \P[X = x, Y = y]$$
You can derive the PMF of each of the random variables (called their *marginal PMF*) from the joint PMF
$$p_{X}(x) = \sum\limits_{y} p_{X,Y}(x, y) \quad p_{Y}(y) = \sum\limits_{x} p_{X,Y}(x, y)$$
You can also define conditional PMF of a random variable $X$, conditioned on a particular event $A$ or another random variable $Y$
$$
p_{X \mid A}(x) = \P[X = x \mid A] = \frac{\P[X = x \cap A]}{\P[A]} \quad p_{X \mid Y}(x \mid y) = \frac{\P[X = x, Y = y]}{\P[Y = y]} = \frac{p_{X,Y}(x,y)}{p_{Y}(y)}
$$
