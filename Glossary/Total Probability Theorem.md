---
aliases: 
tags:
  - review
papers:
---
[[bertsekas2008introduction]]
Let $A_{1}, \ldots, A_{n}$ be disjoint events that form a partition of the sample space (each possible outcome is included in exactly one of the events $A_{1}, \ldots, A_{n}$) and assume that $P(A_{i}) > 0$, for all $i$. Then, for any event $B$, we have
$$
\begin{align*}
\P(B) &= \P(A_{1} \cap B) + \cdots + \P(A_{n} \cap B)\\
&= \P(A_{1})\P(B|A_{1}) + \cdots + \P(A_{n})P(B|A_{n})\\
\end{align*}
$$
A special case of the total probability theorem can be applied using the conditional [[Probability Mass Function|PMF]]
$$p_{X}(x) = \sum\limits_{i = 1}^{n} \P[A_{i}]p_{X \mid A_{i}} (x)$$

