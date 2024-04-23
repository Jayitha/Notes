---
aliases: 
tags:
  - review
papers: "[[shalev2014understanding]]"
sr-due: 2024-04-12
sr-interval: 1
sr-ease: 230
---
?
[[shalev2014understanding]]
Let $\H$ be a finite hypothesis class. Let $\delta \in (0, 1)$ and $\epsilon > 0$ and let $m$ be an integer that satisfies
$$m \geq \frac{\log{(\lvert \H \rvert/\delta)}}{\epsilon}$$
Then, for any labelling function, $f$, and for any distribution, $\D$, for which the realizability assumption holds (i.e. for some $h \in \H, L_{\D, f}(h) = 0$ ), with probability at least $1 - \delta$ over the choice of an [[Independent and Identically Distributed (IID)|IID]] sample $S$ of size $m$, we have that for every [[Empirical Risk Minimization|ERM]] hypothesis, $h_S$, it holds that
$$L_{\D,f}(h_{S}) \leq \epsilon$$
Where $\delta$ is usually the *probability of getting a non-representative sample* making $(1 - \delta)$ the *confidence parameter* and $\epsilon$ is the *accuracy parameter*. 
If $\H$ is a finite class then [[Empirical Risk Minimization|ERM]]$_{\H}$ will not overfit, provided it is based on a sufficiently large training sample (size depends on size of $\H$)