---
aliases: 
tags:
  - review
papers:
---
[[bertsekas2008introduction]]
How can you get unbiased outcomes ($0.5$ for heads) from an unbiased coin ($p$ for heads)

Flip the biased coin repeatedly until you get either an outcome of $HT$ or $TH$. A $HT$ outcome could correspond to $H$, and a $TH$ outcome could correspond to $T$.

| Outcome | Probability |
| ------- | ----------- |
| $HH$    | $p^2$       |
| $HT$    | $p(1-p)$    |
| $TH$    | $p(1-p)$    |
| $TT$    | $(1 - p)^2$ |
You discard the events $HH$ and $TT$
