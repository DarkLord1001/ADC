let $bookpath:=doc("book.xml")/books/book
for $i in $bookpath
where $i/author="mayuresh" or $i/author="sahil" 
return 
$i/bname

