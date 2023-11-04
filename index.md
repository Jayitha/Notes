
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
TABLE title, year, file.tags
FROM "Literature Notes" AND #reading
SORT year ASC
```


## Read

```dataview 
TABLE title, year, file.tags
FROM "Literature Notes" AND #read OR #skimmed
SORT year ASC
```


## To Read

```dataview 
TABLE title, year, file.tags
FROM "Literature Notes" AND #to-read
SORT year ASC
```


