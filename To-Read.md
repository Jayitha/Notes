# To Read

```dataview
LIST link(rows.file.link, rows.file.frontmatter.title) 
FROM "Literature Notes" AND #to-read  
GROUP BY year
SORT year DESC
```
