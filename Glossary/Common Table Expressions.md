---
aliases:
  - CTE
tags:
  - review
papers:
---
?
[[Unit 1 - SQL]]
`WITH` clause defines a temporary table only available to the to the query it occurs in.
Useful when same intermediate table needs to be accessed multiple times
```sql
WITH X AS
	(SELECT product, SUM(quantity) AS TQ
	 FROM purchase
	 GROUP BY product)
SELECT MAX(TQ) AS MTQ
FROM X
```
