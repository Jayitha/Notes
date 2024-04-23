---
aliases: 
tags:
  - review
papers:
sr-due: 2024-04-13
sr-interval: 2
sr-ease: 245
---
[[shalev2014understanding]]
Overfitting occurs when your hypothesis fits the training data too well, performing poorly on the test data i.e. low empirical error but high generalization error.

A classic example of overfitting using the [[Empirical Risk Minimization|ERM]] paradigm is if you decide on a model that remembers all the sample labels. In this case, the empirical loss is $0$, however, the true error is unbounded. 
