show databases;
create database sathyabama;
use sathyabama;
Create table students (
   sname varchar(30),
   sid int,
   smarks int
);
show tables from sathyabama;
desc students;
select*from students;
insert into students(sid,sname,smarks)
values(10,'Aksh',10),
(20,'jagan',20),
(30,'sabi',50),
(40,'shreya',40);
ALTER TABLE students
ADD semail VARCHAR(100);
DELETE from students WHERE sid= 20;
UPDATE students SET semail = 'rahul@example.com' WHERE sid = 10;
ALTER TABLE students
rename column semail  to smailid;
