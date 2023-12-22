---
title: "The Chubby lock service for loosely-coupled distributed systems"
authors: Mike Burrows
year: 2006
url: ""
Zotero URI: "zotero://select/items/@burrows2006chubby"
tags: to-read, Mike-Burrows
aliases: The Chubby lock service for loosely-coupled distributed systems
---

# The Chubby lock service for loosely-coupled distributed systems  
_Mike Burrows (2006)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> We describe our experiences with the Chubby lock service, which is intended to provide coarse-grained locking as well as reliable (though low-volume) storage for a loosely-coupled distributed system. Chubby provides an interface much like a distributed file system with advisory locks, but the design emphasis is on availability and reliability, as opposed to high performance. Many instances of the service have been used for over a year, with several of them each handling a few tens of thousands of clients concurrently. The paper describes the initial design and expected use, compares it with actual use, and explains how the design had to be modified to accommodate the differences.


