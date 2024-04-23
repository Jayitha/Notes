---
aliases: 
tags:
  - review
papers:
---
[[bertsekas2008introduction]]
Posed by Chevalier de Mere in the 17th century to Pascal, who introduced the idea that the stake of an interrupted game should be divided in the proportion to the players conditional probabilities of winning given the state of the game at the time of the interruption

Let $S$ be the interrupted state, $\P(A \mid S)$ and $\P(B \mid S)$ be the conditional probability that $A$ and $B$ win (resp.) from state $S$. Let $x$ be the stake (prize). Then, the amount that $A$ ($B$) gets, denoted by $A_{x}$ ($B_{x}$) is given by
$$A_{x} = \frac{\P(A \mid S)x}{\P(A \mid S) + \P(B \mid S)} \quad B_{x} = \frac{\P(B \mid S)x}{\P(A \mid S) + \P(B \mid S)}$$