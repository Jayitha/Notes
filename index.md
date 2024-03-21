

# Papers and Books

![[Streams]]
## Currently Reading

```dataview
LIST link(rows.file.link, rows.file.frontmatter.title) 
FROM "Literature Notes" AND #reading 
GROUP BY year
SORT year DESC
```

## Read

```dataview
LIST link(rows.file.link, rows.file.frontmatter.title) 
FROM "Literature Notes" AND #read OR #skimmed 
GROUP BY year
SORT year DESC
```


