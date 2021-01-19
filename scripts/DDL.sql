create table Department (
    ID int PRIMARY KEY auto increment not null,
    Name varchar(255),
    Location varchar(255)
)
create table Employee (
    ID int PRIMARY KEY auto increment not null,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    SSN int,
    DeptID int FOREIGN KEY REFERENCES Department(ID)
)
create table EmpDetails(
    ID int PRIMARY KEY auto increment not null,
    EmployeeID int FOREIGN KEY REFERENCES Employee(ID),
    Salary int,
    Address_1 VARCHAR(255),
    Address_2 VARCHAR(255),
    City VARCHAR(255),
    State VARCHAR(255),
    Country VARCHAR(255)
)