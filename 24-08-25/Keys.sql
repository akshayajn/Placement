show databases;
create database company;
use company;
CREATE TABLE Employees (
    ID INT NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(20),
    age INT,
    UNIQUE(ID)
);
INSERT INTO Employees (ID, Email, Phone, Age)
VALUES
 (1, 'akshaya@gmail.com', '8667898432', 11),
(2,'nandhini@gmail.com',678888888,12);
SHOW INDEXES FROM Employees;
ALTER TABLE Employees DROP INDEX Email;
select*from Employees;

CREATE TABLE Orders (
    OrderID INT,
    ProductID INT,
    Quantity INT,
    PRIMARY KEY (OrderID, ProductID)  
);
INSERT INTO Orders (OrderID, ProductID, Quantity)
VALUES (1, 200, 300);
ALTER TABLE Orders DROP PRIMARY KEY;
ALTER TABLE Orders ADD CONSTRAINT pk_orders PRIMARY KEY (OrderID);
SHOW INDEXES FROM Orders;
select*from Orders;

create table category(
categoryID int PRIMARY KEY,
categoryname varchar(50));
insert into category (categoryID,categoryname)
values(1001,'electronics'),
(1002,'furniture');
CREATE TABLE product (
    pID INT PRIMARY KEY,
    Pname VARCHAR(50),
    categoryID INT,
    FOREIGN KEY (categoryID) REFERENCES category(categoryID)
);
insert into product values(10003,'chair',1001);
select*from category;
select*from product;
UPDATE product SET Pname = 'Office Chair' WHERE pID = 10003;
DELETE FROM product WHERE categoryID = 1001;
