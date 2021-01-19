create table Department (
    PRIMARY key ID int,
    Name varchar(255),
    Location varchar(255)
)
create table Employee (
    PRIMARY Key ID int,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    SSN int,
    DeptID int FOREIGN KEY REFERENCES Department(ID)
)
create table EmpDetails(
    PRIMARY KEY ID int,
    EmployeeID int FOREIGN KEY REFERENCES Employee(ID),
    Salary int,
    Address_1 VARCHAR(255),
    Address_2 VARCHAR(255),
    City VARCHAR(255),
    State VARCHAR(255),
    Country VARCHAR(255)
)