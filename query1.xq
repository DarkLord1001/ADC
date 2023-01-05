let $bookpath:=doc("book.xml")/books/book
for $i in $bookpath
where $i/price>=200
return 
$i/bname

