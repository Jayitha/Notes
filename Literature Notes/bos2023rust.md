---
title: Rust temporary lifetimes and "Super Let"
authors: Mara Bos
year: 2023
url: ""
Zotero URI: zotero://select/items/@bos2023rust
tags:
  - read
---

# Rust temporary lifetimes and "Super Let"  
_Mara Bos (2023)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> The lifetime of temporaries in Rust is a complicated but often ignored topic. In simple cases, Rust keeps temporaries around for exactly long enough, such that we don't have to think about them. However, there are plenty of cases were we might not get exactly what we want, right away. In this post, we (re)discover the rules for the lifetime of temporaries, go over a few use cases for temporary lifetime extension, and explore a new language idea, super let, to give us more control.

