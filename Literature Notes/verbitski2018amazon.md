---
title: "Amazon aurora: On avoiding distributed consensus for i/Os, commits, and membership changes"
authors: Alexandre Verbitski, Anurag Gupta, Debanjan Saha, James Corey, Kamal Gupta, Murali Brahmadesam, Raman Mittal, Sailesh Krishnamurthy, Sandor Maurice, Tengiz Kharatishvilli, others
year: 2018
url: ""
Zotero URI: "zotero://select/items/@verbitski2018amazon"
tags: to-read, Alexandre-Verbitski, Anurag-Gupta, Debanjan-Saha, James-Corey, Kamal-Gupta, Murali-Brahmadesam, Raman-Mittal, Sailesh-Krishnamurthy, Sandor-Maurice, Tengiz-Kharatishvilli, -others
aliases: Amazon aurora: On avoiding distributed consensus for i/Os, commits, and membership changes
---

# Amazon aurora: On avoiding distributed consensus for i/Os, commits, and membership changes  
_Alexandre Verbitski, Anurag Gupta, Debanjan Saha, James Corey, Kamal Gupta, Murali Brahmadesam, Raman Mittal, Sailesh Krishnamurthy, Sandor Maurice, Tengiz Kharatishvilli, others (2018)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> Amazon Aurora is a high-throughput cloud-native relational database offered as part of Amazon Web Services (AWS). One of the more novel differences between Aurora and other relational databases is how it pushes redo processing to a multi-tenant scale-out storage service, purpose-built for Aurora. Doing so reduces networking traffic, avoids checkpoints and crash recovery, enables failovers to replicas without loss of data, and enables fault-tolerant storage that heals without database involvement. Traditional implementations that leverage distributed storage would use distributed consensus algorithms for commits, reads, replication, and membership changes and amplify cost of underlying storage. In this paper, we describe how Aurora avoids distributed consensus under most circumstances by establishing invariants and leveraging local transient state. Doing so improves performance, reduces variability, and lowers costs.


