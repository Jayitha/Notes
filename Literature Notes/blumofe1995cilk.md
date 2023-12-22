---
title: "Cilk: An efficient multithreaded runtime system"
authors: Robert D Blumofe, Christopher F Joerg, Bradley C Kuszmaul, Charles E Leiserson, Keith H Randall, Yuli Zhou
year: 1995
url: ""
Zotero URI: "zotero://select/items/@blumofe1995cilk"
tags: to-read, Robert D-Blumofe, Christopher F-Joerg, Bradley C-Kuszmaul, Charles E-Leiserson, Keith H-Randall, Yuli-Zhou
aliases: Cilk: An efficient multithreaded runtime system
---

# Cilk: An efficient multithreaded runtime system  
_Robert D Blumofe, Christopher F Joerg, Bradley C Kuszmaul, Charles E Leiserson, Keith H Randall, Yuli Zhou (1995)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> Cilk (pronounced “silk”) is a C-based runtime system for multi-threaded parallel programming. In this paper, we document the efficiency of the Cilk work-stealing scheduler, both empirically and analytically. We show that on real and synthetic applications, the “work” and “critical path” of a Cilk computation can be used to accurately model performance. Consequently, a Cilk programmer can focus on reducing the work and critical path of his computation, insulated from load balancing and other runtime scheduling issues. We also prove that for the class of “fully strict” (well-structured) programs, the Cilk scheduler achieves space, time and communication bounds all within a constant factor of optimal. The Cilk runtime system currently runs on the Connection Machine CM5 MPP, the Intel Paragon MPP, the Silicon Graphics Power Challenge SMP, and the MIT Phish network of workstations. Applications written in Cilk include protein folding, graphic rendering, backtrack search, and the *Socrates chess program, which won third prize in the 1994 ACM International Computer Chess Championship.


