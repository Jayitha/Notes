---
aliases: 
tags: 
papers:
---
?
[[Unit 1 - SQL]]
When the `WHERE` clause of a nested query references some table in the outer query, the two queries are said to be _correlated_
Where in uncorrelated queries, you could evaluate the inner query and then evaluate the outer query, in a correlated query, the inner query has to be evaluated for each tuple of the outer query (semantic evaluation)