---
aliases: 
tags: 
papers:
---
[[chamberlin1981history]]

A relational access method

Developed by R.Lorie at IBM's Cambridge Scientific Center

XRM stores relations in the form of "tuples" each of which has a unique 32-but "tuple identifier" (TID). TIDs store page pointers.

Tuples don't store data values directly but instead store pointers to the domains where data is stored

![[Pasted image 20240319130518.png|Source: chamberlin1981history]]

Domain may additionally have inversions which associates a domain values with all the TIDs that take on the domain value. Therefore, if you query for a list of tuples that take on a domain value, you can access the inversion list for that domain value. 

Inversion lists allow for TID-list processing where you can obtain the list of query-satisfying TIDs before tuples are fetched

