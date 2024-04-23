---
aliases: 
tags:
  - review
papers:
---
?
[[Unit 1 - SQL]]
Takes first non-`NULL` value
```sql
SELECT COALESCE(1, NULL) ------ 1
SELECT COALESCE(NULL, 3) ------ 3
SELECT COALESCE(1, 2) --------- 1
SELECT COALESCE(NULL, NULL) --- NULL
```
Natural full joins model `COALESCE`
```sql
M = {(a: [1, 2])}
N = {(a: [2, 3])}

SELECT *
FROM M
NATURAL FULL JOIN N

--- {(a: 1, 2, 3)}
```
