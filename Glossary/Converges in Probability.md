---
aliases: 
tags: 
papers: "[[beyer1999nearest]]"
---
[[beyer1999nearest]]
A sequence of random vectors (where all vectors have the same arity) $\vec{A_{1}},\vec{A_{2}} \ldots$  ==converges in probability== $(\vec{A_{m}} \rightarrow_{p} \vec{c})$ to a constant vector $\vec{c}$ if for all $\epsilon > 0$ the probability of $\vec{A_{m}}$ being at most $\epsilon$ away from $\vec{c}$ converges to $1$ as $m \rightarrow \infty$.

$$\forall \epsilon > 0,\; \lim_{m \rightarrow \infty} P\left [\lVert \vec{A_{m}} - \vec{c}\rVert \leq \epsilon \right] = 1$$ Related Lemmas:

If $B_{1}, B_{2}, \ldots$ is a sequence of random variables with finite variance and $\lim_{m \rightarrow \infty} \mathbf{E}[B_{m}] = b$ and $\lim_{m \rightarrow \infty} var(B_{m})= 0$, then $B_{m} \rightarrow_{p} b$

