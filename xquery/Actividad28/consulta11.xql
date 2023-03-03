for $x in doc("llibreria.xml")/bookstore/book
let $iva := $x/price * 1.15
order by $iva
return 
(<titulo>{data($x/title)}</titulo>,
<precio>{data($x/price)}</precio>,
<precioIVA>{data($iva)}</precioIVA>)