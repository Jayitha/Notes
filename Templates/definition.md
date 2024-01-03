---
aliases: 
tags: 
papers:
---
# `=this.file.name`
Aliases: _`=join(this.file.aliases)`_
Papers: [`=join(this.file.frontmatter.papers)`]
Tags: `=join(this.file.tags, " ")`

## References

```dataview
LIST file.frontmatter.title FROM outgoing([[]])
```

















