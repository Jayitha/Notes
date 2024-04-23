---
aliases:
  - ERM
tags:
  - review
papers:
sr-due: 2024-04-12
sr-interval: 1
sr-ease: 226
---
[[shalev2014understanding]]
The learner is blind to $\mathcal{D}$ and $f$ therefore, one approach is for the learner to minimize *training error* (also called *empirical error* or *empirical risk*)
$$L_{S}(h) = \frac{|i \in [m] : h(x_{i}) \neq y_{i}|}{m}$$
Generating a predictor that minimizes empirical risk is called *Empirical Risk Minimization (ERM)*

[[Overfitting]] is a risk which can possibly be countered using an [[Inductive Bias]]

- [?] Over which hypothesis classes does ERM not overfit?
- The tradeoff is that choosing a more restrictive hypothesis class will protect us from overfitting but it’ll also induce a heavier inductive bias