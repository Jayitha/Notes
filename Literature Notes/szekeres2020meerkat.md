---
title: "Meerkat: Multicore-scalable replicated transactions following the zero-coordination principle"
authors: Adriana Szekeres, Michael Whittaker, Jialin Li, Naveen Kr Sharma, Arvind Krishnamurthy, Dan RK Ports, Irene Zhang
year: 2020
url: ""
Zotero URI: "zotero://select/items/@szekeres2020meerkat"
tags: to-read, Adriana-Szekeres, Michael-Whittaker, Jialin-Li, Naveen Kr-Sharma, Arvind-Krishnamurthy, Dan RK-Ports, Irene-Zhang
aliases: Meerkat: Multicore-scalable replicated transactions following the zero-coordination principle
---

# Meerkat: Multicore-scalable replicated transactions following the zero-coordination principle  
_Adriana Szekeres, Michael Whittaker, Jialin Li, Naveen Kr Sharma, Arvind Krishnamurthy, Dan RK Ports, Irene Zhang (2020)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> Traditionally, the high cost of network communication between servers has hidden the impact of cross-core coordination in replicated systems. However, new technologies, like kernel-bypass networking and faster network links, have exposed hidden bottlenecks in distributed systems. This paper explores how to build multicore-scalable, replicated storage systems. We introduce a new guideline for their design, called the Zero-Coordination Principle. We use this principle to design a new multicore-scalable, in-memory, replicated, key-value store, called Meerkat. Unlike existing systems, Meerkat eliminates all cross-core and cross-replica coordination, both of which pose a scalability bottleneck. Our experiments found that Meerkat is able to scale up to 80 hyper-threads and execute 8.3 million transactions per second. Meerkat represents an improvement of 12X on state-of-the-art, fault-tolerant, in-memory, transactional storage systems built using leader-based replication and a shared transaction log.


