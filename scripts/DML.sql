insert into Department (Name,Location)
values ("Executive","Top_Floor")

insert into Department (Name,Location)
values ("HR","First_Floor")

insert into Department (Name,Location)
values ("Warehouse","Basement")

insert into Department (Name,Location)
values ("Marketing","Second_Floor")



insert into Employee(FirstName,LastName,SSN,DeptID)
values('John','Smith',456123585,(select ID from Department where Name = "Marketing"))

insert into Employee(FirstName,LastName,SSN,DeptID)
values('Frank','Goodall',458787554,(select ID from Department where Name = "Marketing"))

insert into Employee(FirstName,LastName,SSN,DeptID)
values('Craig','Gary',213545654,(select ID from Department where Name = "Marketing"))

insert into Employee(FirstName,LastName,SSN,DeptID)
values('Tina','Smith',123456789,(select ID from Department where Name = "Marketing"))



insert into EmpDetails(EmployeeID,Salary,Address_1,City,State,Country)
values ((select ID from Employee where FirstName = "John" and LastName = "Smith" ),60000,"231 Fake Street","Fake Town","Fake State","Fake Country")

insert into EmpDetails(EmployeeID,Salary,Address_1,City,State,Country)
values ((select ID from Employee where FirstName = "Frank" and LastName = "Goodall" ),70000,"8 Real Street","Real Town","Real State","Real Country")

insert into EmpDetails(EmployeeID,Salary,Address_1,City,State,Country)
values ((select ID from Employee where FirstName = "Craig" and LastName = "Gary" ),80000,"45 Token Street","Ball Town","Square State","Octagonal Country")

insert into EmpDetails(EmployeeID,Salary,Address_1,City,State,Country)
values ((select ID from Employee where FirstName = "Tina" and LastName = "Smith" ),60000,"45 Street","Town","State","Country")


select FirstName,LastName 
from Employee 
left join Department on Employee.DeptID = Department.ID
where Employee.DeptID = (select ID from Department where Name = "Marketing")


select SUM(Salary) as TotalSalaryOfMarketing
from EmpDetails
left join Employee on Employee.ID = EmpDetails.EmployeeID
left join Department on Department.ID = Employee.DeptID
where Department.Name = "Marketing"

DECLARE @Department as VARCHAR(255)
SET @Department = "Marketing"
select count(EmployeeID) as TotalEmployees
from Employee
left join Department on Department.ID = Employee.DeptID
where Department.Name = @Department

update EmpDetails
set Salary = 90000
from EmpDetails
left join Employee on Employee.ID = EmpDetails.EmployeeID
where FirstName = "Tina" and LastName = "Smith"
