let $bookpath:=doc("book.xml")/books/book
for $i in $bookpath
where count($i/author)>=2
return 
$i/bname

