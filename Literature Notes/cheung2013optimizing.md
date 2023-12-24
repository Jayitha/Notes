---
title: "Optimizing database-backed applications with query synthesis"
authors: Alvin Cheung, Armando Solar-Lezama, Samuel Madden
year: 2013
url: ""
Zotero URI: "zotero://select/items/@cheung2013optimizing"
tags: to-read, Alvin-Cheung, Armando-Solar-Lezama, Samuel-Madden
aliases: Optimizing database-backed applications with query synthesis
---

# Optimizing database-backed applications with query synthesis  
_Alvin Cheung, Armando Solar-Lezama, Samuel Madden (2013)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> Object-relational mapping libraries are a popular way for applications to interact with databases because they provide transparent access to the database using the same language as the application. Unfortunately, using such frameworks often leads to poor performance, as modularity concerns encourage developers to implement relational operations in application code. Such application code does not take advantage of the optimized relational implementations that database systems provide, such as efficient implementations of joins or push down of selection predicates. In this paper we present QBS, a system that automatically transforms fragments of application logic into SQL queries. QBS differs from traditional compiler optimizations as it relies on synthesis technology to generate invariants and postconditions for a code fragment. The postconditions and invariants are expressed using a new theory of ordered relations that allows us to reason precisely about both the contents and order of the records produced complex code fragments that compute joins and aggregates. The theory is close in expressiveness to SQL, so the synthesized postconditions can be readily translated to SQL queries. Using 75 code fragments automatically extracted from over 120k lines of open-source code written using the Java Hibernate ORM, we demonstrate that our approach can convert a variety of imperative constructs into relational specifications and significantly improve application performance asymptotically by orders of magnitude.


