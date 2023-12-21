---
title: "Column sketches: A scan accelerator for rapid and robust predicate evaluation"
authors: Brian Hentschel, Michael S Kester, Stratos Idreos
year: 2018
url: ""
Zotero URI: "zotero://select/items/@hentschel2018column"
tags: to-read, Brian-Hentschel, Michael S-Kester, Stratos-Idreos
aliases: Column sketches: A scan accelerator for rapid and robust predicate evaluation
---

# Column sketches: A scan accelerator for rapid and robust predicate evaluation  
_Brian Hentschel, Michael S Kester, Stratos Idreos (2018)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> While numerous indexing and storage schemes have been developed to address the core functionality of predicate evaluation in data systems, they all require specific workload properties (query selectivity, data distribution, data clustering) to provide good performance and fail in other cases. We present a new class of indexing scheme, termed a Column Sketch, which improves the performance of predicate evaluation independently of workload properties. Column Sketches work primarily through the use of lossy compression schemes which are designed so that the index ingests data quickly, evaluates any query performantly, and has small memory footprint. A Column Sketch works by applying this lossy compression on a value-by-value basis, mapping base data to a representation of smaller fixed width codes. Queries are evaluated affirmatively or negatively for the vast majority of values using the compressed data, and only if needed check the base data for the remaining values. Column Sketches work over column, row, and hybrid storage layouts. We demonstrate that by using a Column Sketch, the select operator in modern analytic systems attains better CPU efficiency and less data movement than state-of-the-art storage and indexing schemes. Compared to standard scans, Column Sketches provide an improvement of 3x-6x for numerical attributes and 2.7x for categorical attributes. Compared to state-of-the-art scan accelerators such as Column Imprints and BitWeaving, Column Sketches perform 1.4 - 4.8× better.


