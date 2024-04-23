---
aliases: 
tags:
  - review
papers:
---
[[bertsekas2008introduction]]
$A$ is *independent* of $B$ if the occurrence of $B$ provides no information and does not alter the probability that $A$ has occurred
$$\P(A | B) = \P(A)$$
Equivalently
$$\P(A \cap B) = \P(A) \P(B)$$

We say that events $A_{1}, A_{2}, \ldots, A_{n}$ are *independent* if, for every subset $S$ of $\{1, 2, \ldots, n\}$
$$\P\left(\bigcap_{i \in S} A_{i}\right) = \prod_{i \in S} \P(A_{i})$$
Pairwise independence does not imply independence, and
$$\P\left(\bigcap_{i} A_{i}\right) = \prod_{i} \P(A_{i})$$
does not imply pairwise independence and consequently, independence. 

You can also define independence of a random variable $X$ of an event $A$ if
$$\P[X = x, A] = \P[X = x]\P[A] = p_{X}(x)\P[A] \qquad \forall x$$
In other words, if $\P[A] > 0$, $X$ and $A$ are independent if
$$p_{X \mid A}(x) = p_{X}(x) \qquad \forall x$$
Similarly, $X$ is independent of another random variable $Y$ if
$$p_{X,Y}(x, y) = p_{X}(x)p_{Y}(y) \qquad \forall x,y$$
in other words, 
$$p_{X \mid Y}(x \mid y) = p_{X}(x) \qquad \forall y, p_{Y}(y) > 0, \forall x$$
## Properties of Independent Random Variables

Let $X$ and $Y$ be two independent random variables, then:

- any functions of $X$ and $Y$ ($g(X), h(Y)$) are independent as well
- $\E[XY] = \E[X]\E[Y]$
- Or, more generally, for any functions $g$ and $h$
$$\E[g(X), h(Y)] = \E[g(X)] \E[h(Y)]$$
- $var(X + Y) = var(X) + var(Y)$. Generally, if $X_{1}, \ldots X_{n}$ are independent random variables, then
$$var(X_{1} + X_{2} + \cdots + X_{n}) = var(X_{1}) + var(X_{2}) + \cdots + var(X_{n})$$



