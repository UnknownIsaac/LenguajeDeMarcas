for $x in doc("books.xml")/bib/libro
order by $x/@anyo
return concat(data($x/titulo)," -> ", data($x/@anyo))