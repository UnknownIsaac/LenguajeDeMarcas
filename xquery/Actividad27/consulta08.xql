for $x in distinct-values(doc("books.xml")/bib/libro/autor/apellido)
order by $x
return $x