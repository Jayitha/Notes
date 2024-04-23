---
aliases: 
tags:
  - review
papers:
---
[[bertsekas2008introduction]]

Let $A_{1}, A_{2}, \ldots$ be an infinite sequence of events which is monotonically increasing ($A_{n} \subset A_{n+1}$). Let $A = \bigcup_{n = 1}^{\infty} A_{n}$. Then
$$\P(A) = \lim_{n \rightarrow \infty} \P(A_{n})$$

If the events are monotonically decreasing ($A_{n + 1} \subset A_{n}$). Let $A = \bigcap_{n = 1}^{\infty} A_{n}$. Then
$$\P(A) = \lim_{n \rightarrow \infty} A_{n}$$

For instance, if the sample space is the real line:
$$\P([0, \infty]) = \lim_{n \rightarrow \infty} \P([0, n]) \quad \lim_{n \rightarrow \infty} \P([n, \infty]) = 0$$

