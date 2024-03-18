---
title: "Hyper: Hybrid OLTP&OLAP high performance database system"
authors: Alfons Kemper, Thomas Neumann
year: 2010
url: ""
Zotero URI: zotero://select/items/@kemper2010hyper
tags:
  - Alfons-Kemper
  - Thomas-Neumann
  - reading
aliases:
  - "Hyper: Hybrid OLTP&OLAP high performance database system"
---

# Hyper: Hybrid OLTP&OLAP high performance database system  
_Alfons Kemper, Thomas Neumann (2010)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> The two areas of online transaction processing (OLTP) and online analytical processing (OLAP) present different challenges for database architectures. Currently, customers with high rates of mission-critical transactions have split their data into two separate systems, one database for OLTP and one so-called data warehouse for OLAP. While allowing for decent transaction rates, this separation has many disadvantages including data freshness issues due to the delay caused by only periodically initiating the Extract Transform Load-data staging and excessive resource consumption due to maintaining two separate information systems. We present an efficient hybrid system, called HyPer, that can handle both OLTP and OLAP simultaneously by using hardware-assisted replication mechanisms to maintain consistent snapshots of the transactional data. HyPer is a main-memory database system that guarantees the ACID properties of OLTP transactions and executes OLAP query sessions (multiple queries) on the same, arbitrarily current and consistent snapshot. The utilization of the processor-inherent support for virtual memory management (address transalation, caching, copy on update) yields both at the same time: unprecedented high transaction rates as high as several 100000 per second and ultra-low OLAP query response times of as low as 10 ms  all on a commodity desktop server. Even the creation of a fresh, transaction-consistent snapshot can be achieved in 10 ms.

OLTP
- Online transaction processing
- transactions access and process only a small portion of the entire data

OLAP
- Online Analytical Processing
- Brought about from BI-applications (Business Intelligence)
- Process substantial portions of the data to generate reports for BI

Initial approaches to perform OLAP on OLTP databases were dismissed since OLAP query processing led to resource contentions hurting transaction processing

A separate Data Warehouse system is installed for BI. Periodically, OLTP database changes are Extracted, Transformed and Loaded (ETL) into the data warehouse. 

![[Pasted image 20240202140825.png]]

This approach has several drawbacks:
- stale data - ETL is only executed periodically
- redundancy - cost of maintaining redundant copies of two systems. However, two systems enables customized models for execution - normalized tables for OLTP and star-schema for OLAP
- high investments - maintaining two systems has economic penalty (hardware, software...)

Strong arguments for *real time business intelligence* advocates for removing the separation (from this point, simply dubbed "the gap") between OLTP and OLAP systems.

Paper argues that the performance improvements needed to bridge the gap can be achieved through main memory database.

Paper argues that critical transactional database volume is limited is size. Furthermore, the size of the main memory is expected to grow faster than the largest business customer's requirements.

HyPer uses a ==main-memory architecture== for transaction processing using a single-threading (cite:[15]) approach where OLTP transactions are executed sequentially.

> [!note] Hyper Features
> - Main-Memory Architecture for transaction processing
> - Single-threaded processing
> 	- Obviates the need for locking and latching


## References

```dataview
LIST file.frontmatter.title FROM outgoing([[]])
```
