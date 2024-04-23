---
aliases:
  - the two-enveloped paradox
tags:
  - review
papers:
---
[[bertsekas2008introduction]]

- [ ] Didn’t really understand this, circle back (@2024-05-06)

You are given two envelopes and you are told that one of them contains $m$ times as much money as the other, where $m$ is an integer with $m > 1$. You open one envelope and look at the amount. You can either keep the amount or you may switch envelopes. What is the best strategy? Switching or no switching?

Let $X$ denote the amount of money in the envelope you picked ($A$) and Y denote the amount in the other ($B$). $y$ is either $mx$ or $x/m$ with equal probability. Therefore,
$$\E[Y \mid X = x] = 0.5 \cdot mx + 0.5 \cdot \frac{x}{m}= \left(\frac{m^{2} + 1}{2m}\right)x > x$$
Therefore, it seems like switching is the dominant strategy. But if you were to pick envelope $B$, the strategy is to switch again etc. 

This is paradoxical! How can this be explained within the realm of probability theory?

You make two assumptions, both of which are flawed

1. We have no apriori knowledge about the amounts in the envelopes. So, given $x$, the only thing we know is that $y$ is either $\frac{x}{m}$ or $mx$ and there’s no reason to assume either is more likely

This assumption is flawed because it relies on an incompletely specified [[Probability Law]] and subsequently an incomplete [[Elements of a Probabilistic Model|Probabilistic Model]]. If you have an idea of the range and likelihood of $X$, then you can judge whether the amount $X$ is relatively smaller or larger than $Y$. In a fully specified [[Probability Mass Function|PMF]], you must have a join PMF of $X$ and $Y$. 

2. Given two random variables, $X$ and $Y$, if $\forall x \E[Y | X = x] > x$, then the strategy that always switches to $Y$ has the highest expected reward

Given the fully-specified probabilistic model i.e. given $p_{X,Y}$ and given $X = x$, switch if and only if $\E[Y | X = x] > x$. Depending on the value of $x$, you may or may not switch envelopes.

However, here’s a fully-specified probabilistic model that still advocates switching for all $x$: A fair coin is tossed until head comes up. Let $N$ be the number of tosses, then $m^N$ dollars are placed in one envelope and $m^{N-1}$ dollars are places in the other. 

Now, if envelope $A$ contains $m^{n}$ dollars, then $B$ contains either $m^{n - 1}$ or $m^{n + 1}$ dollars. $N$ has a geometric PMF
$$
\frac{\P[Y = m^{n + 1} \mid X = m^{n}]}{\P[Y = m^{n - 1} \mid X = m^{n}]} = \frac{\P[Y = m^{n + 1}, X = m^{n}]}{\P[Y = m^{n - 1}, X = m^{n}]} = \frac{\P[N = n + 1]}{\P[N = n]} = \frac{1}{2}
$$
Therefore,
$$
\P[Y = m^{n - 1} \mid X = m^{n}] = \frac{2}{3} \qquad \P[Y = m^{n + 1} \mid X = m^{n}] = \frac{1}{3}
$$
The expected amount you’d get by switching is
$$
\E[B \mid X = m^{n}] = \frac{2}{3} \cdot m^{n - 1} + \frac{1}{3} \cdot m^{n + 1} = \frac{2 + m^{2}}{3m}\cdot m^{n}
$$
The expected value is larger than $X$ iff 
$$\frac{2 + m^{2}}{3m} > 1 \Longleftrightarrow (m - 1)(m - 2)>0$$
When $m>2$, it may seem like switching is the dominant strategy

If you were to apply the [[Total Expectation Theorem]], you might get $\E[Y] > \E[X]$. This cannot be true since $X$ and $Y$ have identical PMFs. 

In actuality, we have $\E[Y] = \E[X] = \infty$ which is consistent with $\forall x \E[Y \mid X = x] > x$. Assumption 2 is invalid when $\E[X] = \E[Y] = \infty$

Let $X$ be a [[Geometric Random Variable]] parameterized with $p = 0.5$ and $Y = m^{X}$ where $m$ is a constant. Then
$$
\begin{aligned}
\E[Y] &= \sum\limits_{x} m^{x} p_{X}(x)\\
&= \sum\limits_{x = 1}^{\infty} m^{x}(1 - p)^{x - 1}p\\
&= \sum\limits_{x = 1}^{\infty} m^{x} 0.5^{x}\\
&= \sum\limits_{x = 1}^{\infty} (m/2)^{x}
\end{aligned}
$$
When $m < 2$, using the [[Sum of Infinite Geometric Sequence]] 
$$
\E[Y] = \frac{\frac{m}{2}}{1 - (\frac{m}{2})} = \frac{m}{2 - m}
$$
When $m > 2, \E[Y] = \infty$ since the series diverges

