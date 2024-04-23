---
aliases: 
tags:
  - review
papers:
---
[[Unit 1 - SQL]]
A query $Q$ is monotone if whenever tuples are added to the input/base relations, the size of the output relation cannot decrease
Conjunctive SQL queries like SELECT-FROM-WHERE are *monotone* i.e. if tuples are added to the input relations, the output relation size can never get smaller


([[Unit 1 - SQL]]) All unnested queries are {{monotone}}

([[Unit 1 - SQL]]) Queries with {{universal quantifier}} are not monotone

([[Unit 1 - SQL]]) We cannot unnest a query with a {{universal quantifier}}