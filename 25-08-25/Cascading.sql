show databases;
create database collage;
use collage;
CREATE TABLE Department(
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50)
);
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    DeptID INT,
        FOREIGN KEY (DeptID) REFERENCES Department(DeptID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);


INSERT INTO Department(DeptID, DeptName)
VALUES (1001,'HR'),
       (1002,'Finance'),
       (1003,'IT');

INSERT INTO Employees(EmpID, EmpName, DeptID)
VALUES (45,'charle',1001),
       (14,'alice',1002),
       (15,'ben',1003);
select*from department;
select*from Employees;
DELETE FROM Department WHERE DeptID = 1003;
UPDATE Department
SET DeptID = 2002
WHERE DeptID = 1002;