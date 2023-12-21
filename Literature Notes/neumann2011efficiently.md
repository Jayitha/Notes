---
title: "Efficiently compiling efficient query plans for modern hardware"
authors: Thomas Neumann
year: 2011
url: ""
Zotero URI: "zotero://select/items/@neumann2011efficiently"
tags: to-read, Thomas-Neumann
aliases: Efficiently compiling efficient query plans for modern hardware
---

# Efficiently compiling efficient query plans for modern hardware  
_Thomas Neumann (2011)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> As main memory grows, query performance is more and more determined by the raw CPU costs of query processing itself. The classical iterator style query processing technique is very simple and exible, but shows poor performance on modern CPUs due to lack of locality and frequent instruction mispredictions. Several techniques like batch oriented processing or vectorized tuple processing have been proposed in the past to improve this situation, but even these techniques are frequently out-performed by hand-written execution plans. In this work we present a novel compilation strategy that translates a query into compact and efficient machine code using the LLVM compiler framework. By aiming at good code and data locality and predictable branch layout the resulting code frequently rivals the performance of hand-written C++ code. We integrated these techniques into the HyPer main memory database system and show that this results in excellent query performance while requiring only modest compilation time.


