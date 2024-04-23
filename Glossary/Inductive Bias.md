---
aliases: 
tags:
  - review
papers:
sr-due: 2024-04-12
sr-interval: 1
sr-ease: 223
---
[[shalev2014understanding]]
To counter [[Overfitting]] with the [[Empirical Risk Minimization|ERM]] paradigm, you could reduce the search space to a *hypothesis class* ($\H$). Each function in the hypothesis class $h$ maps $\X$ to $\Y$. Therefore, the [[Empirical Risk Minimization|ERM]] learner ($ERM_\H$) picks the function that minimizes empirical loss.
$$ERM_\H = \argmin_{h \in \H} L_{S}(h)$$
By restricting the learner to choosing a predictor from $\H$ we *bias* the learner towards a predefined set of predictors. This biasing is *inductive* since the class $\H$ was chosen prior to interacting with the training data. 