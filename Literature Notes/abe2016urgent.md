---
title: "Urgent virtual machine eviction with enlightened post-copy"
authors: Yoshihisa Abe, Roxana Geambasu, Kaustubh Joshi, Mahadev Satyanarayanan
year: 2016
url: ""
Zotero URI: "zotero://select/items/@abe2016urgent"
tags: to-read, Yoshihisa-Abe, Roxana-Geambasu, Kaustubh-Joshi, Mahadev-Satyanarayanan
aliases: Urgent virtual machine eviction with enlightened post-copy
---

# Urgent virtual machine eviction with enlightened post-copy  
_Yoshihisa Abe, Roxana Geambasu, Kaustubh Joshi, Mahadev Satyanarayanan (2016)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> Virtual machine (VM) migration demands distinct properties under resource oversubscription and workload surges. We present enlightened post-copy, a new mechanism for VMs under contention that evicts the target VM with fast execution transfer and short total duration. This design contrasts with common live migration, which uses the down time of the migrated VM as its primary metric; it instead focuses on recovering the aggregate performance of the VMs being affected. In enlightened post-copy, the guest OS identifies memory state that is expected to encompass the VM's working set. The hypervisor accordingly transfers its state, mitigating the performance impact on the migrated VM resulting from post-copy transfer. We show that our implementation, with modest instrumentation in guest Linux, resolves VM contention up to several times faster than live migration.


