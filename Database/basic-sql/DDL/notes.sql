-- DDL :- Data definition language
-- create, alter, drop, truncate, rename
create database DDL;
use DDL;
create table table1(
    emp_id int primary key,
    emp_name varchar(50) not null,
    emp_salary decimal(10,2));
insert into table1 values(101,'rahul',50000.00);
insert into table1 values(102,'shivesh',60000.00);    
select*from table1;
truncate table table1;
select*from table1;
insert into table1 values(1,'anjali',40000.00),(2,'sumant',30000.00),(3,'sachin',70000.00),(4,'rohit',80000.00), (5,'virat',90000.00);

select*from table1;

-- alter   


-- new column
alter table table1 add employee_address varchar(100);
select*from table1;

-- column delete
alter table table1 drop column employee_address;
select*from table1;

-- column property change
desc table1;
alter table table1 modify column emp_name varchar(100);
desc table1;

-- rename table
alter table table1 rename to table2;
select*from table2;

-- column change
alter table table2 change column emp_salary emp_salary decimal(12,2);
desc table2;

select*from table2;
alter table table2 rename to table1;

select*from table1;


