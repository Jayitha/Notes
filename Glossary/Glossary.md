
```dataview 
LIST rows.file.link
FROM "Glossary"
SORT rows.file.name ASC
GROUP BY substring(file.name, 0, 1)
SORT substring(file.name, 0, 1) ASC
```


