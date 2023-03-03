for $x in doc("llibreria.xml")/bookstore/book[year = 2005]
return <lib2005><titulo>{data($x/title)}, <autor>{data($x/author)}</autor></titulo></lib2005>