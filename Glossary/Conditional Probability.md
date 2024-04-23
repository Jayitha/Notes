---
aliases: 
tags:
  - review
papers:
---
[[bertsekas2008introduction]]
The conditional probability of an event $A$, given an event $B$ with $P(B) > 0$, is defined by
$$P(A | B) = \frac{P(A \cap B)}{P(B)}$$
The conditional probability if not defined if $P(B) = 0$

It specifies a new (conditional) probability law on the same sample space $\Omega$. In particular, all [[Properties of Probability Laws]] remain valid for conditional probability laws.

Conditional probabilities can also be viewed as a probability law on a new universe $B$, because all of the conditional probability in concentrated on $B$.

If the possible outcomes are finitely many and equally likely, then
$$P(A | B) = \frac{|A \cap B|}{|B|}$$