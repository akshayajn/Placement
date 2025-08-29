SHOW DATABASES;
CREATE DATABASE emp;
USE emp;
CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    DeptID INT
);

CREATE TABLE Department (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50)
);

INSERT INTO Employee (EmpID, EmpName, DeptID) VALUES
(1, 'Alice', 10),
(2, 'Bob', 20),
(3, 'Charlie', 30),
(4, 'David', NULL);

INSERT INTO Department (DeptID, DeptName) VALUES
(10, 'HR'),
(20, 'Finance'),
(40, 'IT');

SELECT * FROM Employee;
SELECT * FROM Department;

SELECT E.EmpID, E.EmpName, D.DeptName FROM Employee E INNER JOIN Department D ON E.DeptID = D.DeptID;
SELECT E.EmpID, E.EmpName, D.DeptID FROM Department D LEFT JOIN Employee E ON D.DeptID = E.DeptID; 
SELECT E.EmpID, E.EmpName, D.DeptID FROM Department D RIGHT JOIN Employee E ON D.DeptID = E.DeptID; 
SELECT E.EmpID, E.EmpName, D.DeptName FROM Employee E CROSS JOIN Department D;
SELECT E.EmpID,E.EmpName, D.DeptId, D.DeptName FROM Employee E LEFT JOIN Department D on E.DeptID = D.DeptID
UNION
SELECT E.EmpID, E.EmpName, D.DeptID, D.DeptName FROM Employee E RIGHT JOIN Department D ON E.DeptId = D.DeptID;
