let $path:=doc("company.xml")
let $projPath:=$path/companyDB/projects/project/[plocation="Bellaire"]
let $deptPath := $path/companyDB/departments/department[@dno=data($projPath/@controllingDepartment)]

let $empPath := $path/companyDB/employees/employee[@ssn =data($deptPath/manager/@mssn)]
for $i in $empPath
return
<result>
<manager>
{
$i/lname |
$i/address |
$i/dob
}
</manager>
<pnumber>
{
data($projPath/@pnumber)
}
</pnumber>
<controllingDepartment>
{
data($projPath/@controllingDepartment)
}
</controllingDepartment>
</result>