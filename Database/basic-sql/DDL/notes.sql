-- DDL :- Data definition language
-- create, alter, drop, truncate, rename
create database employee;
use employee;
create table employee(
    emp_id int primary key,
    emp_name varchar(50) not null,
    emp_salary decimal(10,2));
insert into employee values(1,'rahul',50000.00);
insert into employee values(2,'shivesh',60000.00);    
select*from employee;
truncate table employee;
select*from employee;
insert into employee values(3,'anjali',40000.00),(4,'sumant',30000.00),(5,'sachin',70000.00),(6,'rohit',80000.00), (7,'virat',90000.00);


-- alter   

-- new column
alter table employee add employee_address varchar(100);
select*from employee;

-- column delete
alter table employee drop column employee_address;
select*from employee;

-- column property change
desc employee;
alter table employee modify column emp_name varchar(100);
desc employee;

-- rename table
alter table employee rename to emp;
select*from emp;

-- column change
alter table emp change column emp_salary emp_salary decimal(12,2);
desc emp;