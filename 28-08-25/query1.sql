CREATE DATABASE ORG123;
SHOW DATABASES;
USE ORG123;

CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT(15),
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25)
);

INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
		(002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
		(003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
		(004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
		(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
		(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
		(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
		(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');
select * from Worker;        
select * from Worker order by salary;
select * from Worker order by salary desc;
INSERT INTO Worker ( FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUE ( 'Satish', 'Kumar', 100000, '07-03-20 09.00.00', 'Manager');
select * from Worker order by FIRST_NAME, DEPARTMENT;
delete from Worker where WORKER_ID = 11;
select department, avg(salary) as avg_salary from Worker group by department;
select count(*) from Worker where DEPARTMENT not in ('HR','ADMIN');
select department, sum(salary) as sum_of_salary from Worker group by department;
select upper(FIRST_NAME) from worker;
select lower(FIRST_NAME) FROM worker;
select substring(FIRST_NAME, 1,4) FROM worker;
select replace(FIRST_NAME,'a','A') FROM worker;
select* from worker order by salary desc limit 3 offset 5;
select* from worker order by salary desc;