for $x in doc("books.xml")/bib/libro
return <result>{($x/titulo, $x/autor)}</result>