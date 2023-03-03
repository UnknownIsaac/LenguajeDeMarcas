for $x in doc("llibreria.xml")/bookstore/book
order by $x/@category, $x/title
return $x