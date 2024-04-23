---
aliases: 
tags:
  - review
papers:
---
[[bertsekas2008introduction]]
Let $A_{1}, A_{2}, \ldots, A_{n}$ be disjoint events that form a partition of the sample space, and assume that $\P(A_{i}) > 0$, for all $i$. Then, for any event $B$ such that $\P(B) > 0$, we have
$$
\begin{aligned}
\P(A_{i} | B) &= \frac{\P(A_{i})\P(B|A_{i})}{\P(B)}\\
&= \frac{\P(A_{i})\P(B|A_{i})}{\P(A_{1})\P(B|A_{1}) + \cdots + \P(A_{n})\P(B|A_{n})}
\end{aligned}
$$
