---
title: "On the reasonable effectiveness of relational diagrams: Explaining relational query patterns and the pattern expressiveness of relational languages"
authors: Wolfgang Gatterbauer, Cody Dunne
year: 2024
url: ""
Zotero URI: "zotero://select/items/@gatterbauer2024reasonable"
tags: to-read, Wolfgang-Gatterbauer, Cody-Dunne
aliases: "On the reasonable effectiveness of relational diagrams: Explaining relational query patterns and the pattern expressiveness of relational languages"
---

# `=this.file.frontmatter.title`
_Wolfgang Gatterbauer, Cody Dunne (2024)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> Comparing relational languages by their logical expressiveness is well understood. Less well understood is how to compare relational languages by their ability to represent relational query patterns. Indeed, what are query patterns other than "a certain way of writing a query"? And how can query patterns be defined across procedural and declarative languages, irrespective of their syntax? To the best of our knowledge, we provide the first semantic definition of relational query patterns by using a variant of structure-preserving mappings between the relational tables of queries. This formalism allows us to analyze the relative pattern expressiveness of relational language fragments and create a hierarchy of languages with equal logical expressiveness yet different pattern expressiveness. Notably, for the non-disjunctive language fragment, we show that relational calculus can express a larger class of patterns than the basic operators of relational algebra. Our language-independent definition of query patterns opens novel paths for assisting database users. For example, these patterns could be leveraged to create visual query representations that faithfully represent query patterns, speed up interpretation, and provide visual feedback during query editing. As a concrete example, we propose Relational Diagrams, a complete and sound diagrammatic representation of safe relational calculus that is provably (i) unambiguous, (ii) relationally complete, and (iii) able to represent all query patterns for unions of non-disjunctive queries. Among all diagrammatic representations for relational queries that we are aware of, ours is the only one with these three properties. Furthermore, our anonymously preregistered user study shows that Relational Diagrams allow users to recognize patterns meaningfully faster and more accurately than SQL.

## References

```dataview
LIST file.frontmatter.title FROM outgoing([[]])
```