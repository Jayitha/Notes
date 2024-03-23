## Notes from Slides

[[Excel]]
[[PostgreSQL]]
[[Bag Semantics]]
[[Distinct]]
[[Semantics of a SQL Query]]
[[Nested Queries]]
[[Common Table Expressions]]
[[Correlated Nested Queries]]
[[Monotone Queries]]
[[Relational Diagrams|SQL Patterns and Relational Diagrams]]
[[Union]]
[[Null]]
[[Join Types]]
[[Coalesce]]
[[Commutativity & Associativity]]
[[Matrix Chain Multiplication]]
[[Full Disjunction]]
[[Top-k Query]]

## Quiz

Are the following two queries the same
```sql
--- QUery 1
SELECT DISTINCT c.cname
FROM company c
WHERE c.cid NOT IN (
	SELECT p.cid
	FROM product p
	WHERE p.price >= 25
)

-- Query 2
SELECT c.cname
FROM company c, product p
WHERE c.cid = p.pid
GROUP BY c.cname
HAVING MAX(p.price) < 25
```
?
No. The former would also return companies that produce no products whereas the latter will only return a company if a it produces at least one product

[Universal Quantifiers and Nested Queries]
While existential quantifier queries like "find all companies that make **some** products below 25" can be "unnested", universal quantifiers are like "find all companies that make **all** parts below 25" harder
```sql
--- Try 1 - NOT IN
SELECT c.cname
FROM company c
WHERE c.cid NOT IN (
	SELECT p.pid
	FROM product p
	WHERE p.price >= 25
)

--- NOT EXISTS
SELECT c.cname
FROM company c
WHERE NOT EXISTS (
	SELECT *
	FROM product p
	WHERE p.cid = c.cid
	AND p.price >= 25
)

--- ALL
SELECT c.cname
FROM company c
WHERE 25 > ALL (
	SELECT p.price
	FROM product p
	WHERE p.cid = c.cid
)

-- GROUP BY
SELECT DISTINCT c.cname
FROM company c JOIN product p 
ON p.cid = c.cid
GROUP BY c.cid
HAVING MAX(p.price) < 25;
```
Can you unnest the universal quantifier query without using group by? 
?
No. Queries with universal quantifier are not monotonic.

## Suggested Reading

- [x] PostgreSQL and pgAdmin set up
- [ ] [[forta2019sql]]
- [ ] [[van2019anytime]]
- [ ] [[gatterbauer2024reasonable]]
- [ ] [[danaparamita2011queryviz]]
- [ ] [[gatterbauer2022principles]]
- [ ] [[ramakrishnan2002database]] - Ch 3 & 5
- [ ] [[garcia2008database]] - Ch 6
- [ ] [[elmasri2016fundamentals]] - Ch 6
- [ ] [[silberschatz2005database]] - Ch 3.8