---
title: "Segment-based recovery: Write-ahead logging revisited"
authors: Russell Sears, Eric Brewer
year: 2009
url: ""
Zotero URI: "zotero://select/items/@sears2009segment"
tags: to-read, Russell-Sears, Eric-Brewer
aliases: Segment-based recovery: Write-ahead logging revisited
---

# Segment-based recovery: Write-ahead logging revisited  
_Russell Sears, Eric Brewer (2009)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> Although existing write-ahead logging algorithms scale to conventional database workloads, their communication and synchronization overheads limit their usefulness for modern applications and distributed systems. We revisit write-ahead logging with an eye toward finer-grained concurrency and an increased range of workloads, then remove two core assumptions: that pages are the unit of recovery and that times-tamps (LSNs) should be stored on each page. Recovering individual application-level objects (rather than pages) simplifies the handing of systems with object sizes that differ from the page size. We show how to remove the need for LSNs on the page, which in turn enables DMA or zero-copy I/O for large objects, increases concurrency, and reduces communication between the application, buffer manager and log manager. Our experiments show that the looser coupling significantly reduces the impact of latency among the components. This makes the approach particularly applicable to large scale distributed systems, and enables a "cross pollination" of ideas from distributed systems and transactional storage. However, these advantages come at a cost; segments are incompatible with physiological redo, preventing a number of important optimizations. We show how allocation enables (or prevents) mixing of ARIES pages (and physiological redo) with segments. We present an allocation policy that avoids undesirable interactions that complicate other combinations of ARIES and LSN-free pages, and then present a proof that both approaches and our combination are correct. Many optimizations presented here were proposed in the past. However, we believe this is the first unified approach.


