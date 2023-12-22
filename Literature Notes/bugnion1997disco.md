---
title: "Disco: Running commodity operating systems on scalable multiprocessors"
authors: Edouard Bugnion, Scott Devine, Kinshuk Govil, Mendel Rosenblum
year: 1997
url: ""
Zotero URI: "zotero://select/items/@bugnion1997disco"
tags: to-read, Edouard-Bugnion, Scott-Devine, Kinshuk-Govil, Mendel-Rosenblum
aliases: Disco: Running commodity operating systems on scalable multiprocessors
---

# Disco: Running commodity operating systems on scalable multiprocessors  
_Edouard Bugnion, Scott Devine, Kinshuk Govil, Mendel Rosenblum (1997)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> In this article we examine the problem of extending modern operating systems to run efficiently on large-scale shared-memory multiprocessors without a large implementation effort. Our approach brings back an idea popular in the 1970s: virtual machine monitors. We use virtual machines to run multiple commodity operating systems on a scalable multiprocessor. This solution addresses many of the challenges facing the system software for these machines. We demonstrate our approach with a prototype called Disco that runs multiple copies of Silicon Graphics' IRIX operating system on a multiprocessor. Our experience shows that the overheads of the monitor are small and that the approach provides scalability as well as the ability to deal with the nonuniform memory access time of these systems. To reduce the memory overheads associated with running multiple operating systems, virtual machines transparently share major data structures such as the program code and the file system buffer cache. We use the distributed-system support of modern operating systems to export a partial single system image to the users. The overall solution achieves most of the benefits of operating systems customized for scalable multiprocessors, yet it can be achieved with a significantly smaller implementation effort.


