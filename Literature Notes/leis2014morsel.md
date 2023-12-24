---
title: "Morsel-driven parallelism: A NUMA-aware query evaluation framework for the many-core age"
authors: Viktor Leis, Peter Boncz, Alfons Kemper, Thomas Neumann
year: 2014
url: ""
Zotero URI: "zotero://select/items/@leis2014morsel"
tags: to-read, Viktor-Leis, Peter-Boncz, Alfons-Kemper, Thomas-Neumann
aliases: Morsel-driven parallelism: A NUMA-aware query evaluation framework for the many-core age
---

# Morsel-driven parallelism: A NUMA-aware query evaluation framework for the many-core age  
_Viktor Leis, Peter Boncz, Alfons Kemper, Thomas Neumann (2014)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> With modern computer architecture evolving, two problems conspire against the state-of-the-art approaches in parallel query execution: (i) to take advantage of many-cores, all query work must be distributed evenly among (soon) hundreds of threads in order to achieve good speedup, yet (ii) dividing the work evenly is difficult even with accurate data statistics due to the complexity of modern out-of-order cores. As a result, the existing approaches for plan-driven parallelism run into load balancing and context-switching bottlenecks, and therefore no longer scale. A third problem faced by many-core architectures is the decentralization of memory controllers, which leads to Non-Uniform Memory Access (NUMA). In response, we present the morsel-driven query execution framework, where scheduling becomes a fine-grained run-time task that is NUMA-aware. Morsel-driven query processing takes small fragments of input data (morsels) and schedules these to worker threads that run entire operator pipelines until the next pipeline breaker. The degree of parallelism is not baked into the plan but can elastically change during query execution, so the dispatcher can react to execution speed of different morsels but also adjust resources dynamically in response to newly arriving queries in the workload. Further, the dispatcher is aware of data locality of the NUMA-local morsels and operator state, such that the great majority of executions takes place on NUMA-local memory. Our evaluation on the TPC-H and SSB benchmarks shows extremely high absolute performance and an average speedup of over 30 with 32 cores.


