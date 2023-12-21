---
title: "Eddies: Continuously adaptive query processing"
authors: Ron Avnur, Joseph M Hellerstein
year: 2000
url: ""
Zotero URI: "zotero://select/items/@avnur2000eddies"
tags: to-read, Ron-Avnur, Joseph M-Hellerstein
aliases: Eddies: Continuously adaptive query processing
---

# Eddies: Continuously adaptive query processing  
_Ron Avnur, Joseph M Hellerstein (2000)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> In large federated and shared-nothing databases, resources can exhibit widely fluctuating characteristics. Assumptions made at the time a query is submitted will rarely hold throughout the duration of query processing. As a result, traditional static query optimization and execution techniques are ineffective in these environments. In this paper we introduce a query processing mechanism called an eddy, which continuously reorders operators in a query plan as it runs. We characterize the moments of symmetry during which pipelined joins can be easily reordered, and the synchronization barriers that require inputs from different sources to be coordinated. By combining eddies with appropriate join algorithms, we merge the optimization and execution phases of query processing, allowing each tuple to have a flexible ordering of the query operators. This flexibility is controlled by a combination of fluid dynamics and a simple learning algorithm. Our initial implementation demonstrates promising results, with eddies performing nearly as well as a static optimizer/executor in static scenarios, and providing dramatic improvements in dynamic execution environments.


