---
title: "Building on quicksand"
authors: Pat Helland, David Campbell
year: 2009
url: ""
Zotero URI: "zotero://select/items/@helland2009building"
tags: to-read, Pat-Helland, David-Campbell
aliases: Building on quicksand
---

# Building on quicksand  
_Pat Helland, David Campbell (2009)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> Reliable systems have always been built out of unreliable components. Early on, the reliable components were small such as mirrored disks or ECC (Error Correcting Codes) in core memory. These systems were designed such that failures of these small components were transparent to the application. Later, the size of the unreliable components grew larger and semantic challenges crept into the application when failures occurred. As the granularity of the unreliable component grows, the latency to communicate with a backup becomes unpalatable. This leads to a more relaxed model for fault tolerance. The primary system will acknowledge the work request and its actions without waiting to ensure that the backup is notified of the work. This improves the responsiveness of the system. There are two implications of asynchronous state capture: 1) Everything promised by the primary is probabilistic. There is always a chance that an untimely failure shortly after the promise results in a backup proceeding without knowledge of the commitment. Hence, nothing is guaranteed! 2) Applications must ensure eventual consistency. Since work may be stuck in the primary after a failure and reappear later, the processing order for work cannot be guaranteed. Platform designers are struggling to make this easier for their applications. Emerging patterns of eventual consistency and probabilistic execution may soon yield a way for applications to express requirements for a "looser" form of consistency while providing availability in the face of ever larger failures. This paper recounts portions of the evolution of these trends, attempts to show the patterns that span these changes, and talks about future directions as we continue to "build on quicksand".


