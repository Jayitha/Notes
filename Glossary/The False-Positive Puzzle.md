---
aliases: 
tags:
  - review
papers:
---
[[bertsekas2008introduction]]
A test for a certain rare disease is assumed to be correct $95\%$ of the time: if a person has the disease, the test results are positive with probability $0.95$ $(\P(TP | P) = 0.95)$, and if the person does not have the disease, the test results are negative with probability $0.95$ ($\P(TN | N) = 0.95$). A random person drawn from a certain population has the probability $0.001$ of having the disease ($\P(P) = 0.001$). Given that the person just tested positive, what is the probability of having the disease? ($\P(P | TP) = ?$)

Using [[Bayes' Rule]] and the [[Total Probability Theorem]]

$$
\begin{aligned}
\P(P | TP) &= \frac{\P(P)\P(TP|P)}{\P(P)\P(TP|P) + \P(N)\P(TP|N)}\\\\
&= \frac{0.001 \cdot 0.95}{0.001 \cdot 0.95 + 0.999 \cdot 0.05}\\\\
&= 0.0187
\end{aligned}
$$
How interesting! Even though the test seemed fairly accurate, a person who tested positive is still very unlikely to have the disease.