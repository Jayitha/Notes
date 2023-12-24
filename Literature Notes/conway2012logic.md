---
title: "Logic and lattices for distributed programming"
authors: Neil Conway, William R Marczak, Peter Alvaro, Joseph M Hellerstein, David Maier
year: 2012
url: ""
Zotero URI: "zotero://select/items/@conway2012logic"
tags: to-read, Neil-Conway, William R-Marczak, Peter-Alvaro, Joseph M-Hellerstein, David-Maier
aliases: Logic and lattices for distributed programming
---

# Logic and lattices for distributed programming  
_Neil Conway, William R Marczak, Peter Alvaro, Joseph M Hellerstein, David Maier (2012)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> In recent years there has been interest in achieving application-level consistency criteria without the latency and availability costs of strongly consistent storage infrastructure. A standard technique is to adopt a vocabulary of commutative operations; this avoids the risk of inconsistency due to message reordering. Another approach was recently captured by the CALM theorem, which proves that logically monotonic programs are guaranteed to be eventually consistent. In logic languages such as Bloom, CALM analysis can automatically verify that programs achieve consistency without coordination. In this paper we present BloomL, an extension to Bloom that takes inspiration from both of these traditions. BloomL generalizes Bloom to support lattices and extends the power of CALM analysis to whole programs containing arbitrary lattices. We show how the Bloom interpreter can be generalized to support efficient evaluation of lattice-based code using well-known strategies from logic programming. Finally, we use BloomL to develop several practical distributed programs, including a key-value store similar to Amazon Dynamo, and show how BloomL encourages the safe composition of small, easy-to-analyze lattices into larger programs.


