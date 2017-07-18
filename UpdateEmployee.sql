CREATE PROCEDURE EpdateEmployee
(
EmployeeNo  int(11), 
EmployeeName varchar(255),

Sex varchar(10)
)

Update Employee.EmployeeDetails set Sex="Male" where EmployeeNo=EmployeeNo