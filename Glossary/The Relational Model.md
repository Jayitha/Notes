---
aliases: 
tags: 
papers: "[[codd1970relational]]"
---
# `=this.file.name`
Aliases: _`=join(this.file.aliases)`_
Papers: [`=join(this.file.frontmatter.papers)`]
Tags: `=join(this.file.tags, " ")`

[[moseley2006out]]
- Origin [[codd1970relational]]
- Nothing intrinsically to do with databases
> Elegant approach to structuring data, a means for manipulating such data, and a mechanism for maintaining integrity and consistency of state and a fourth strength is its insistence on a clear separation between the logical and physical layers of the system
- The relational model has the following four aspects
	1. Structure (relations represent data)
	2. Manipulation (means to specify derived data)
	3. Integrity (a means to specify restrictions on data)
	4. Data Independence (separation b/w logical data and its physical representation)
## References

```dataview
LIST file.frontmatter.title FROM outgoing([[]])
```

















