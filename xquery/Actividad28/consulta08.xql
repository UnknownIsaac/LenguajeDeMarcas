for $x in doc("llibreria.xml")/bookstore
return <total>{count($x/book)}</total>