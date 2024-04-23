---
aliases: 
tags:
  - review
papers:
---
[[bertsekas2008introduction]]
The *Poisson* random variable is used to model the [[Binomial Random Variable]] when the number of trials $n$ is large and the probability of success $p$ is small i.e. it’s used to model the number of occurrences of *rare* events. It’s used to make the probability model less complex and the related computation more tractable
$$
X = \{1, 2, \ldots\}
$$
its [[Probability Mass Function|PMF]] is given by
$$p_{X}(k) = e^{-\lambda}\frac{\lambda^k}{k!}$$
You can use the [[Maclaurin Series|Maclaurin Series Expansion]] of function $e^{x}$ to show that it’s a valid PMF.

The Poisson PMF with parameter $\lambda = np$ is a good approximation for a Binomial PMF with parameters $n$ and $p$
$$
e^{-\lambda} \frac{\lambda^{k}}{k!} \approx {n \choose k} p^{k} (1 - p)^{n - k} \quad \quad k = 0, 1, \ldots n
$$

In other words, a Poisson random variable $Y$ with parameter $\lambda$ can be viewed as the *limit* of the [[Binomial Random Variable]]
as $n \rightarrow \infty, p \rightarrow 0$, while $np = \lambda$

The [[Expectation|mean]] and [[Variance|variance]] are
$$
\E[X] = var(X) = \lambda
$$
