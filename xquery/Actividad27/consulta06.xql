for $x in doc("books.xml")/bib/libro
where $x/autor[2]
return concat(data($x/@anyo)," -> ",data($x/titulo))