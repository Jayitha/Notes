---
aliases: 
tags:
  - review
papers:
sr-due: 2024-04-12
sr-interval: 1
sr-ease: 230
---
 [[shalev2014understanding]]
Error of prediction rule $h$ is the probability of drawing a random instance $x$ according to $\mathcal{D}$, such that $h(x) \neq f(x)$
If $\mathcal{D}(A)$ denotes the probability of generating subset $A (\subseteq \X)$ from distribution $\mathcal{D}$
$$\mathcal{L}_{(\mathcal{D}, f)}(h) = \mathbb{P}_{x \sim \mathcal{D}}\left [h(x) \neq f(x) \right] = \mathcal{D}(\{x \mid h(x) \neq f(x)\})$$
Where $\mathcal{L}_{\mathcal{D}, f}(h)$ is called the *generalization error*, the *risk* or the *true error of $h$*
