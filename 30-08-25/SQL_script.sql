create database practise;
show databases;
use practise;

create table emp(
id int,
name varchar(35),
age int);
insert into emp values (001,'Akshaya',20),(002,'Nandhini',20);
update emp set age = 13 where id = 002;
select* from emp;