for $x in doc("books.xml")/bib/libro
where $x/@anyo < 2000
return $x