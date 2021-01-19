insert into Employee(FirstName,LastName,SSN,DeptID)
values('Tina','Smith',123456789,(select ID from Department where Name = "Marketing"))
