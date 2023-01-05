let $path:=doc("grade.xml")/gradebook/grade/catalogs/catalog
for $i in $path
where $i/ctitle="Automata"
return
$i/cno
