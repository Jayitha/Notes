---
title: "Chord: A scalable peer-to-peer lookup protocol for internet applications"
authors: Ion Stoica, Robert Morris, David Liben-Nowell, David R Karger, M Frans Kaashoek, Frank Dabek, Hari Balakrishnan
year: 2003
url: ""
Zotero URI: "zotero://select/items/@stoica2003chord"
tags: to-read, Ion-Stoica, Robert-Morris, David-Liben-Nowell, David R-Karger, M Frans-Kaashoek, Frank-Dabek, Hari-Balakrishnan
aliases: Chord: A scalable peer-to-peer lookup protocol for internet applications
---

# Chord: A scalable peer-to-peer lookup protocol for internet applications  
_Ion Stoica, Robert Morris, David Liben-Nowell, David R Karger, M Frans Kaashoek, Frank Dabek, Hari Balakrishnan (2003)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> A fundamental problem that confronts peer-to-peer applications is the efficient location of the node that stores a desired data item. This paper presents Chord, a distributed lookup protocol that addresses this problem. Chord provides support for just one operation: given a key, it maps the key onto a node. Data location can be easily implemented on top of Chord by associating a key with each data item, and storing the key/data pair at the node to which the key maps. Chord adapts efficiently as nodes join and leave the system, and can answer queries even if the system is continuously changing. Results from theoretical analysis and simulations show that Chord is scalable: Communication cost and the state maintained by each node scale logarithmically with the number of Chord nodes.


