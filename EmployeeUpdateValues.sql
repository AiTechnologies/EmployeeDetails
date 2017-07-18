CREATE PROCEDURE EmployeeUpdatevalues
(
EmployeeNo  int(11), 
EmployeeName varchar(255),

Salary double
)

Update Employee.EmployeeDetails set Salary=Salary where EmployeeNo=EmployeeNo