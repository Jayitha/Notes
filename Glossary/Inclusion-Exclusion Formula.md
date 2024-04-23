---
aliases: 
tags:
  - review
papers:
---
[[bertsekas2008introduction]]
Let $A$ and $B$ be two events, then
$$\P(A \cup B) = \P(A) + \P(B) - \P(A \cap B)$$

Let $C$ be another events
$$\P(A \cup B \cup C) = \P(A) + \P(B) + \P(C) - \P(A \cap B) - \P(B \cap C) - \P(A \cap C) + \P(A \cap B \cap C)$$

In general, let $A_{1}, A_{2}, \ldots, A_{n}$ be events. Let $S_{1} = \{i \mid 1 \leq i \leq n\}$, $S_{2}= \{(i_{1}, i_{2}) \mid 1 \leq i_{1} < i_{2} \leq n\}$ and more generally, let $S_{m}$ be the set of all $m$-tuples $(i_{1}, \ldots, i_{m})$ of indices that satisfy $1 \leq i_{1} < i_{2} < \cdots < i_{m} \leq n$. Then
$$
\begin{aligned}
\P\left(\bigcup_{k = 1}^{n} A_{k}\right) = &\sum\limits_{i \in S_{1}} \P(A_{i}) - \sum\limits_{(i_{1}, i_{2}) \in S_{2}} \P(A_{i_{1}} \cap A_{i_{2}})\\\\
&+ \sum\limits_{(i_{1}, i_{2}, i_{3}) \in S_{3}} \P(A_{i_{1}} \cap A_{i_{2}} \cap A_{i_{3}}) - \cdots + (-1)^{n - 1} \P\left(\bigcap_{k = 1}^{n} A_{k}\right)
\end{aligned}
$$
