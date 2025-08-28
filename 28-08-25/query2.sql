use org123;
show tables;
select * from Worker;
select DEPARTMENT, avg(SALARY) as avg_salary from Worker group by DEPARTMENT having avg(SALARY) > 100000;
select DEPARTMENT, max(SALARY) as max_salary from Worker group by DEPARTMENT having max(SALARY) = 500000;
select DEPARTMENT, avg(SALARY) as avg_salary from Worker group by DEPARTMENT having avg(SALARY) between 50000 and 200000;
select DEPARTMENT, count(*) as emp_count, sum(SALARY) as total_salary from Worker group by DEPARTMENT having count(*) > 1 and sum(SALARY) > 100000;

