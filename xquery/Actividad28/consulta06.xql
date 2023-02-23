for $x in doc("llibreria.xml")/bookstore/book
let $y := $x/year 
return <publicacion>{data($y)}</publicacion>