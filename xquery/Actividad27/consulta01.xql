for $x in doc("books.xml")/bib/libro
return data($x/titulo)