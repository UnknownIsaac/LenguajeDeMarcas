for $x in doc("books.xml")/bib/libro
where count($x/autor)=0
return concat(data($x/@anyo)," -> ",data($x/titulo))