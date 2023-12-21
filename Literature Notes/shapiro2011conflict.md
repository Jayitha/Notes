---
title: "Conflict-free replicated data types"
authors: Marc Shapiro, Nuno Preguiça, Carlos Baquero, Marek Zawirski
year: 2011
url: ""
Zotero URI: "zotero://select/items/@shapiro2011conflict"
tags: to-read, Marc-Shapiro, Nuno-Preguiça, Carlos-Baquero, Marek-Zawirski
aliases: Conflict-free replicated data types
---

# Conflict-free replicated data types  
_Marc Shapiro, Nuno Preguiça, Carlos Baquero, Marek Zawirski (2011)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> Replicating data under Eventual Consistency (EC) allows any replica to accept updates without remote synchronisation. This ensures performance and scalability in large-scale distributed systems (e.g., clouds). However, published EC approaches are ad-hoc and error-prone. Under a formal Strong Eventual Consistency (SEC) model, we study sufficient conditions for convergence. A data type that satisfies these conditions is called a Conflict-free Replicated Data Type (CRDT). Replicas of any CRDT are guaranteed to converge in a self-stabilising manner, despite any number of failures. This paper formalises two popular approaches (state- and operation-based) and their relevant sufficient conditions. We study a number of useful CRDTs, such as sets with clean semantics, supporting both add and remove operations, and consider in depth the more complex Graph data type. CRDT types can be composed to develop large-scale distributed applications, and have interesting theoretical properties.


