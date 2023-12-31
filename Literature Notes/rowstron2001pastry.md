---
title: "Pastry: Scalable, decentralized object location, and routing for large-scale peer-to-peer systems"
authors: Antony Rowstron, Peter Druschel
year: 2001
url: ""
Zotero URI: "zotero://select/items/@rowstron2001pastry"
tags: to-read, Antony-Rowstron, Peter-Druschel
aliases: Pastry: Scalable, decentralized object location, and routing for large-scale peer-to-peer systems
---

# Pastry: Scalable, decentralized object location, and routing for large-scale peer-to-peer systems  
_Antony Rowstron, Peter Druschel (2001)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> This paper presents the design and evaluation of Pastry, a scalable, distributed object location and routing substrate for wide-area peer-to-peer applications. Pastry performs application-level routing and object location in a potentially very large overlay network of nodes connected via the Internet. It can be used to support a variety of peer-to-peer applications, including global data storage, data sharing, group communication and naming. Each node in the Pastry network has a unique identifier (nodeId). When presented with a message and a key, a Pastry node efficiently routes the message to the node with a nodeId that is numerically closest to the key, among all currently live Pastry nodes. Each Pastry node keeps track of its immediate neighbors in the nodeId space, and notifies applications of new node arrivals, node failures and recoveries. Pastry takes into account network locality; it seeks to minimize the distance messages travel, according to a to scalar proximity metric like the number of IP routing hops Pastry is completely decentralized, scalable, and self-organizing; it automatically adapts to the arrival, departure and failure of nodes. Experimental results obtained with a prototype implementation on an emulated network of up to 100,000 nodes confirm Pastry's scalability and efficiency, its ability to self-organize and adapt to node failures, and its good network locality properties


