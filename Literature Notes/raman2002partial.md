---
title: "Partial results for online query processing"
authors: Vijayshankar Raman, Joseph M Hellerstein
year: 2002
url: ""
Zotero URI: "zotero://select/items/@raman2002partial"
tags: to-read, Vijayshankar-Raman, Joseph M-Hellerstein
aliases: Partial results for online query processing
---

# Partial results for online query processing  
_Vijayshankar Raman, Joseph M Hellerstein (2002)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> Traditional query processors generate full, accurate query results, either in batch or in pipelined fashion. We argue that this strict model is too rigid for exploratory queries over diverse and distributed data sources, such as sources on the Internet. Instead, we propose a looser model of querying in which a user submits a broad initial query outline, and the system continually generates partial result tuples that may contain values for only some of the output fields. The user can watch these partial results accumulate at the user interface, and accordingly refine the query by specifying their interest in different kinds of partial results.After describing our querying model and user interface, we present a query processing architecture for this model which is implemented in the Telegraph dataflow system. Our architecture is designed to generate partial results quickly, and to adapt query execution to changing user interests. The crux of this architecture is a dataflow operator that supports two kinds of reorderings: reordering of intermediate tuples within a dataflow, and reordering of query plan operators through which tuples flow. We study reordering policies that optimize for the quality of partial results delivered over time, and experimentally demonstrate the benefits of our architecture in this context.


