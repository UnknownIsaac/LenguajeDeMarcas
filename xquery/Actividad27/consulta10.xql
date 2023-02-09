for $x in doc("books.xml")/bib/libro
return if ($x/count(autor)=1)
then <libro>{$x/titulo, "hay", count( $x/autor),"autor"}</libro>
else <libro>{$x/titulo, "hay", count( $x/autor),"autores"}</libro>