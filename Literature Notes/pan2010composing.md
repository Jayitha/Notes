---
title: "Composing parallel software efficiently with lithe"
authors: Heidi Pan, Benjamin Hindman, Krste Asanović
year: 2010
url: ""
Zotero URI: "zotero://select/items/@pan2010composing"
tags: to-read, Heidi-Pan, Benjamin-Hindman, Krste-Asanović
aliases: Composing parallel software efficiently with lithe
---

# Composing parallel software efficiently with lithe  
_Heidi Pan, Benjamin Hindman, Krste Asanović (2010)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> Applications composed of multiple parallel libraries perform poorly when those libraries interfere with one another by obliviously using the same physical cores, leading to destructive resource oversubscription. This paper presents the design and implementation of Lithe, a low-level substrate that provides the basic primitives and a standard interface for composing parallel codes efficiently. Lithe can be inserted underneath the runtimes of legacy parallel libraries to provide bolt-on composability without needing to change existing application code. Lithe can also serve as the foundation for building new parallel abstractions and libraries that automatically interoperate with one another. In this paper, we show versions of Threading Building Blocks (TBB) and OpenMP perform competitively with their original implementations when ported to Lithe. Furthermore, for two applications composed of multiple parallel libraries, we show that leveraging our substrate outperforms their original, even expertly tuned, implementations.


