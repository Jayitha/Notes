---
aliases:
  - total expectation theorem
tags:
  - review
papers:
---
[[bertsekas2008introduction]]
From the [[Total Probability Theorem]], if $A_{1}, \ldots, A_{n}$ are disjoint events that partition the sample space with $\P[A_{i}] > 0$ for all $i$, then
$$\E[X] = \sum\limits_{i = 1}^{n} \P[A_{i}]\E[X \mid A_{i}]$$
Other ways to interpret the same theorem include

For any event $B$ with $\P[A_{i} \cap B] > 0$ for all $i$, we have
$$\E[X \mid B] = \sum\limits_{i = 1}^{n} \P[A_{i} \mid B] \E[X \mid A_{i} \cap B]$$
and 
$$\E[X] = \sum\limits_{y}p_{Y}(y) \E[X \mid Y = y]$$
