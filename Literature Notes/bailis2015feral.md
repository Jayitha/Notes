---
title: "Feral concurrency control: An empirical investigation of modern application integrity"
authors: Peter Bailis, Alan Fekete, Michael J Franklin, Ali Ghodsi, Joseph M Hellerstein, Ion Stoica
year: 2015
url: ""
Zotero URI: "zotero://select/items/@bailis2015feral"
tags: to-read, Peter-Bailis, Alan-Fekete, Michael J-Franklin, Ali-Ghodsi, Joseph M-Hellerstein, Ion-Stoica
aliases: Feral concurrency control: An empirical investigation of modern application integrity
---

# Feral concurrency control: An empirical investigation of modern application integrity  
_Peter Bailis, Alan Fekete, Michael J Franklin, Ali Ghodsi, Joseph M Hellerstein, Ion Stoica (2015)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> The rise of data-intensive "Web 2.0" Internet services has led to a range of popular new programming frameworks that collectively embody the latest incarnation of the vision of Object-Relational Mapping (ORM) systems, albeit at unprecedented scale. In this work, we empirically investigate modern ORM-backed applications' use and disuse of database concurrency control mechanisms. Specifically, we focus our study on the common use of feral, or application-level, mechanisms for maintaining database integrity, which, across a range of ORM systems, often take the form of declarative correctness criteria, or invariants. We quantitatively analyze the use of these mechanisms in a range of open source applications written using the Ruby on Rails ORM and find that feral invariants are the most popular means of ensuring integrity (and, by usage, are over 37 times more popular than transactions). We evaluate which of these feral invariants actually ensure integrity (by usage, up to 86.9%) and which—due to concurrency errors and lack of database support—may lead to data corruption (the remainder), which we experimentally quantify. In light of these findings, we present recommendations for database system designers for better supporting these modern ORM programming patterns, thus eliminating their adverse effects on application integrity.


