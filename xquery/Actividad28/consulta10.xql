for $x in doc("llibreria.xml")/bookstore
return ((max($x/book/price)),(min($x/book/price)))