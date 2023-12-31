---
title: "Dynamo: Amazon's highly available key-value store"
authors: Giuseppe DeCandia, Deniz Hastorun, Madan Jampani, Gunavardhan Kakulapati, Avinash Lakshman, Alex Pilchin, Swaminathan Sivasubramanian, Peter Vosshall, Werner Vogels
year: 2007
url: ""
Zotero URI: "zotero://select/items/@decandia2007dynamo"
tags: to-read, Giuseppe-DeCandia, Deniz-Hastorun, Madan-Jampani, Gunavardhan-Kakulapati, Avinash-Lakshman, Alex-Pilchin, Swaminathan-Sivasubramanian, Peter-Vosshall, Werner-Vogels
aliases: Dynamo: Amazon's highly available key-value store
---

# Dynamo: Amazon's highly available key-value store  
_Giuseppe DeCandia, Deniz Hastorun, Madan Jampani, Gunavardhan Kakulapati, Avinash Lakshman, Alex Pilchin, Swaminathan Sivasubramanian, Peter Vosshall, Werner Vogels (2007)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> Reliability at massive scale is one of the biggest challenges we face at Amazon.com, one of the largest e-commerce operations in the world; even the slightest outage has significant financial consequences and impacts customer trust. The Amazon.com platform, which provides services for many web sites worldwide, is implemented on top of an infrastructure of tens of thousands of servers and network components located in many datacenters around the world. At this scale, small and large components fail continuously and the way persistent state is managed in the face of these failures drives the reliability and scalability of the software systems. This paper presents the design and implementation of Dynamo, a highly available key-value storage system that some of Amazon's core services use to provide an "always-on" experience. To achieve this level of availability, Dynamo sacrifices consistency under certain failure scenarios. It makes extensive use of object versioning and application-assisted conflict resolution in a manner that provides a novel interface for developers to use.


