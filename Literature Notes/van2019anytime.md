---
title: "Anytime approximation in probabilistic databases via scaled dissociations"
authors: Maarten Van den Heuvel, Peter Ivanov, Wolfgang Gatterbauer, Floris Geerts, Martin Theobald
year: 2019
url: ""
Zotero URI: "zotero://select/items/@van2019anytime"
tags: to-read, Maarten-Van den Heuvel, Peter-Ivanov, Wolfgang-Gatterbauer, Floris-Geerts, Martin-Theobald
aliases: "Anytime approximation in probabilistic databases via scaled dissociations"
---

# `=this.file.frontmatter.title`
_Maarten Van den Heuvel, Peter Ivanov, Wolfgang Gatterbauer, Floris Geerts, Martin Theobald (2019)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> Speeding up probabilistic inference remains a key challenge in probabilistic databases (PDBs) and the related area of statistical relational learning (SRL). Since computing probabilities for query answers is #P-hard, even for fairly simple conjunctive queries, both the PDB and SRL communities have proposed a number of approximation techniques over the years. The two prevalent techniques are either (i) MCMC-style sampling or (ii) branch-and-bound (B&B) algorithms that iteratively improve model-based bounds using a combination of variable substitution and elimination. We propose a new anytime B&B approximation scheme that encompasses all prior model-based approximation schemes proposed in the PDB and SRL literature. Our approach relies on the novel idea of "scaled dissociation" which can improve both the upper and lower bounds of existing modelbased algorithms. We apply our approach to the well-studied problem of evaluating self-join-free conjunctive queries over tuple-independent PDBs, and show a consistent reduction in approximation error in our experiments on TPC-H, Yago3, and a synthetic benchmark setting.

## References

```dataview
LIST file.frontmatter.title FROM outgoing([[]])
```
