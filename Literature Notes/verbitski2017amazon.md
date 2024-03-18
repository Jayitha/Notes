---
title: "Amazon aurora: Design considerations for high throughput cloud-native relational databases"
authors: Alexandre Verbitski, Anurag Gupta, Debanjan Saha, Murali Brahmadesam, Kamal Gupta, Raman Mittal, Sailesh Krishnamurthy, Sandor Maurice, Tengiz Kharatishvili, Xiaofeng Bao
year: 2017
url: ""
Zotero URI: zotero://select/items/@verbitski2017amazon
tags:
  - Alexandre-Verbitski
  - Anurag-Gupta
  - Debanjan-Saha
  - Murali-Brahmadesam
  - Kamal-Gupta
  - Raman-Mittal
  - Sailesh-Krishnamurthy
  - Sandor-Maurice
  - Tengiz-Kharatishvili
  - Xiaofeng-Bao
  - reading
aliases:
  - "Amazon aurora: Design considerations for high throughput cloud-native relational databases"
---

# Amazon aurora: Design considerations for high throughput cloud-native relational databases  
_Alexandre Verbitski, Anurag Gupta, Debanjan Saha, Murali Brahmadesam, Kamal Gupta, Raman Mittal, Sailesh Krishnamurthy, Sandor Maurice, Tengiz Kharatishvili, Xiaofeng Bao (2017)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> Amazon Aurora is a relational database service for OLTP workloads offered as part of Amazon Web Services (AWS). In this paper, we describe the architecture of Aurora and the design considerations leading to that architecture. We believe the central constraint in high throughput data processing has moved from compute and storage to the network. Aurora brings a novel architecture to the relational database to address this constraint, most notably by pushing redo processing to a multi-tenant scale-out storage service, purpose-built for Aurora. We describe how doing so not only reduces network traffic, but also allows for fast crash recovery, failovers to replicas without loss of data, and fault-tolerant, self-healing storage. We then describe how Aurora achieves consensus on durable state across numerous storage nodes using an efficient asynchronous scheme, avoiding expensive and chatty recovery protocols. Finally, having operated Aurora as a production service for over 18 months, we share the lessons we have learnt from our customers on what modern cloud applications expect from databases.


