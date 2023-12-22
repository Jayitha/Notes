---
title: "Pond: The {OceanStore} prototype"
authors: Sean Rhea, Patrick Eaton, Dennis Geels, Hakim Weatherspoon, Ben Zhao, John Kubiatowicz
year: 2003
url: ""
Zotero URI: "zotero://select/items/@rhea2003pond"
tags: to-read, Sean-Rhea, Patrick-Eaton, Dennis-Geels, Hakim-Weatherspoon, Ben-Zhao, John-Kubiatowicz
aliases: Pond: The {OceanStore} prototype
---

# Pond: The {OceanStore} prototype  
_Sean Rhea, Patrick Eaton, Dennis Geels, Hakim Weatherspoon, Ben Zhao, John Kubiatowicz (2003)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> OceanStore is an Internet-scale, persistent data store designed for incremental scalability, secure sharing, and long-term durability. Pond is the OceanStore prototype; it contains many of the features of a complete system including location-independent routing, Byzantine update commitment, push-based update of cached copies through an overlay multicast network, and continuous archiving to erasure-coded form. In the wide area, Pond outperforms NFS by up to a factor of 4.6 on read-intensive phases of the Andrew benchmark, but underperforms NFS by as much as a factor of 7.3 on write-intensive phases. Microbenchmarks show that write performance is limited by the speed of erasure coding and threshold signature generation, two important areas of future research. Further microbenchmarks show that Pond manages replica consistency in a bandwidth-efficient manner and quantify the latency cost imposed by this bandwidth savings.


