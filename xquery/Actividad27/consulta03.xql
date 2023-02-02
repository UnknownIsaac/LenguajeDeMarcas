for $x in doc("books.xml")/bib/libro
where $x/precio = 65.95
return $x