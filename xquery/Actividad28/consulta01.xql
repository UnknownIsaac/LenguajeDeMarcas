for $x in doc("llibreria.xml")/bookstore/book
return <titulo>{data($x/title)}</titulo>