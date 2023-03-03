for $x in doc("llibreria.xml")/bookstore
return ((data($x/book/title)), <total>{count($x/book)}</total>)