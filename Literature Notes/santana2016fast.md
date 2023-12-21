---
title: "A fast and slippery slope for file systems"
authors: Ricardo Santana, Raju Rangaswami, Vasily Tarasov, Dean Hildebrand
year: 2016
url: ""
Zotero URI: "zotero://select/items/@santana2016fast"
tags: to-read, Ricardo-Santana, Raju-Rangaswami, Vasily-Tarasov, Dean-Hildebrand
aliases: A fast and slippery slope for file systems
---

# A fast and slippery slope for file systems  
_Ricardo Santana, Raju Rangaswami, Vasily Tarasov, Dean Hildebrand (2016)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> There is a vast number and variety of file systems currently available, each optimizing for an ever growing number of storage devices and workloads. Users have an unprecedented, and somewhat overwhelming, number of data management options. At the same time, the fastest storage devices are only getting faster, and it is unclear on how well the existing file systems will adapt. Using emulation techniques, we evaluate five popular Linux file systems across a range of storage device latencies typical to low-end hard drives, latest high-performance persistent memory block devices, and in between. Our findings are often surprising. Depending on the workload, we find that some file systems can clearly scale with faster storage devices much better than others. Further, as storage device latency decreases, we find unexpected performance inversions across file systems. Finally, file system scalability in the higher device latency range is not representative of scalability in the lower, submillisecond, latency range. We then focus on Nilfs2 as an especially alarming example of an unexpectedly poor scalability and present detailed instructions for identifying bottlenecks in the I/O stack.


