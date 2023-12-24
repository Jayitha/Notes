---
title: "Precisely serializable snapshot isolation (PSSI)"
authors: Stephen Revilak, Patrick O'Neil, Elizabeth O'Neil
year: 2011
url: ""
Zotero URI: "zotero://select/items/@revilak2011precisely"
tags: to-read, Stephen-Revilak, Patrick-O'Neil, Elizabeth-O'Neil
aliases: Precisely serializable snapshot isolation (PSSI)
---

# Precisely serializable snapshot isolation (PSSI)  
_Stephen Revilak, Patrick O'Neil, Elizabeth O'Neil (2011)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> Many popular database management systems provide snapshot isolation (SI) for concurrency control, either in addition to or in place of full serializability based on locking. Snapshot isolation was introduced in 1995, with noted anomalies that can lead to serializability violations. Full serializability was provided in 2008 and improved in 2009 by aborting transactions in dangerous structures, which had been shown in 2005 to be precursors to potential SI anomalies. This approach resulted in a runtime environment guaranteeing a serializable form of snapshot isolation (which we call SSI or ESSI) for arbitrary applications. But transactions in a dangerous structure frequently do not cause true anomalies so, as the authors point out, their method is conservative: it can cause unnecessary aborts. In the current paper, we demonstrate our PSSI algorithm to detect cycles in a snapshot isolation dependency graph and abort transactions to break the cycle. This algorithm provides a much more precise criterion to perform aborts. We have implemented our algorithm in an open source production database system (MySQL/InnoDB), and our performance study shows that PSSI throughput improves on ESSI, with significantly fewer aborts.


