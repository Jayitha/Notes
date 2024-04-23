---
aliases:
  - Apache Arrow Columnar Format
  - Arrow
tags: 
papers:
---
[Apache Arrow](https://arrow.apache.org/docs/index.html) an in-memory columnar data format that allows for fast processing and movement of data. Some features include
- Zero-copy shared memory 
- RPC-based data movement
- Reading and writing file formats (CSV, Apache Parquet)
- In-memory analytics and query processing
The columnar format consists of
- an in-memory data structure specification
- metadata serialization
- protocol for serialization and data transport


Uses Google's [[Flatbuffers]] for metadata serialization

The columnar format has some key features

> From [website](https://arrow.apache.org/docs/format/Columnar.html)
> - Data adjacency for sequential access (scans)
> - $O(1)$ (constant-time) random access
> - SIMD and vectorization-friendly
> - Relocatable without "pointer swizzling", allowing for true zero-copy access in shared memory


> Analytical and data locality in exchange for comparatively more expensive mutation operations



