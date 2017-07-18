CREATE PROCEDURE EmployeeInsertValues
(     
EmployeeNo  int(11), 
EmployeeName varchar(255),
DOB DATE, 
Sex varchar(10),
Qualification varchar(20), CollegeName varchar(40), PaseedOutYear date,
Salary int(11), Department varchar(20),MobileNo double,
Address varchar(50),EmailId  varchar(50)
)

insert into employee.employeedetails values (EmployeeNo,EmployeeName,DOB,Sex,Qualification,CollegeName,PassedOutYear,Salary,Department,MobileNo,Address,EmailId)