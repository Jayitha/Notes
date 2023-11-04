
# Glossary

```dataview 
LIST rows.file.link
FROM "Glossary" OR "Algorithms" OR "Open Problems" OR "Skew Types"
SORT rows.file.name ASC
GROUP BY substring(file.name, 0, 1)
SORT substring(file.name, 0, 1) ASC
```

# Papers and Books
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

## To Read

```dataview
LIST link(rows.file.link, rows.file.frontmatter.title) 
FROM "Literature Notes" AND #to-read  
GROUP BY year
SORT year DESC
```
