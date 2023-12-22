---
title: "Comprehensive formal verification of an OS microkernel"
authors: Gerwin Klein, June Andronick, Kevin Elphinstone, Toby Murray, Thomas Sewell, Rafal Kolanski, Gernot Heiser
year: 2014
url: ""
Zotero URI: "zotero://select/items/@klein2014comprehensive"
tags: to-read, Gerwin-Klein, June-Andronick, Kevin-Elphinstone, Toby-Murray, Thomas-Sewell, Rafal-Kolanski, Gernot-Heiser
aliases: Comprehensive formal verification of an OS microkernel
---

# Comprehensive formal verification of an OS microkernel  
_Gerwin Klein, June Andronick, Kevin Elphinstone, Toby Murray, Thomas Sewell, Rafal Kolanski, Gernot Heiser (2014)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> We present an in-depth coverage of the comprehensive machine-checked formal verification of seL4, a general-purpose operating system microkernel. We discuss the kernel design we used to make its verification tractable. We then describe the functional correctness proof of the kernel's C implementation and we cover further steps that transform this result into a comprehensive formal verification of the kernel: a formally verified IPC fastpath, a proof that the binary code of the kernel correctly implements the C semantics, a proof of correct access-control enforcement, a proof of information-flow noninterference, a sound worst-case execution time analysis of the binary, and an automatic initialiser for user-level systems that connects kernel-level access-control enforcement with reasoning about system behaviour. We summarise these results and show how they integrate to form a coherent overall analysis, backed by machine-checked, end-to-end theorems. The seL4 microkernel is currently not just the only general-purpose operating system kernel that is fully formally verified to this degree. It is also the only example of formal proof of this scale that is kept current as the requirements, design and implementation of the system evolve over almost a decade. We report on our experience in maintaining this evolving formally verified code base.


