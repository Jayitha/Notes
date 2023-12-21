---
title: "Analysis and evolution of journaling file systems."
authors: Vijayan Prabhakaran, Andrea C Arpaci-Dusseau, Remzi H Arpaci-Dusseau
year: 2005
url: ""
Zotero URI: "zotero://select/items/@prabhakaran2005analysis"
tags: to-read, Vijayan-Prabhakaran, Andrea C-Arpaci-Dusseau, Remzi H-Arpaci-Dusseau
aliases: Analysis and evolution of journaling file systems.
---

# Analysis and evolution of journaling file systems.  
_Vijayan Prabhakaran, Andrea C Arpaci-Dusseau, Remzi H Arpaci-Dusseau (2005)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> We develop and apply two new methods for analyzing file system behavior and evaluating file system changes. First, semantic block-level analysis (SBA) combines knowledge of on-disk data structures with a trace of disk traffic to infer file system behavior; in contrast to standard benchmarking approaches, SBA enables users to understand why the file system behaves as it does. Second, semantic trace playback (STP) enables traces of disk traffic to be easily modified to represent changes in the file system implementation; in contrast to directly modifying the file system, STP enables users to rapidly gauge the benefits of new policies. We use SBA to analyze Linux ext3, ReiserFS, JFS, and Windows NTFS; in the process, we uncover many strengths and weaknesses of these journaling file systems. We also apply STP to evaluate several modifications to ext3, demonstrating the benefits of various optimizations without incurring the costs of a real implementation.


