let $path:=doc("company.xml")
let $deptpath:=$path/companyDB/departments/department[dname="Research"]
let $emppath:=$path/companyDB/employees/employee
for $i in $emppath
where $i/@worksFor=$deptpath/@dno
return
<result>
{$i/fname}
{$i/address}
</result>


