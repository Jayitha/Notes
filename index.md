
# Glossary

```dataview 
LIST rows.file.link
FROM "Glossary"
SORT rows.file.name ASC
GROUP BY substring(file.name, 0, 1)
SORT substring(file.name, 0, 1) ASC
```

# Papers and Books

## Streams

[[UC Berkeley's CS286 - Graduate Database Systems]]
[[Ryan Marcus' CIS 6500 – Advanced Topics in Database Systems]]
[[UC Berkeley's CS264a - Advanced Topics in Computer Systems]]
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

## [[To-Read]]

