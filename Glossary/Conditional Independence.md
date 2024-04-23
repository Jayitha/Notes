---
aliases: 
tags:
  - review
papers:
---
[[bertsekas2008introduction]]
Given an event $C$, the events $A$ and $B$ are called *conditionally independent* if
$$\P(A \cap B \mid C) = \P(A \mid C) \P(B \mid C)$$
Equivalently, assuming $\P(B \mid C)$ is nonzero
$$\P(A \mid B \cap C) = \P(A \mid C)$$
Conditional independence does not imply unconditional independence and vice versa.

You can define the notion of conditional independence between two random variables $X$ and $Y$ conditioned on event $A$, given $\P[A] > 0$ if
$$\P[X = x, Y = y \mid A] = \P[X = x \mid A] \P[Y = y \mid A] \forall x,y$$
Or equivalently
$$p_{X \mid Y, A} (x \mid y) = p_{X \mid A}(x) \qquad \forall x,y, p_{Y \mid A}(y) > 0$$
