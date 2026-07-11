-- 🔹 What is DML in MySQL?
-- Definition: DML is a subset of SQL used to manipulate data stored in tables.

-- Scope: It affects the rows of data, not the schema (structure).

-- Use Cases: Customer records, transactions, inventory updates, employee info, etc.

create database DML;
use DMl;
create table table1(id int ,name varchar(20),branch text);

--  1.insert

insert into table1 values(101,"shivesh","konnagar"),(102,"sumant","belur");
select*from table1;

insert into table1(id) values(103);
select*from table1;

-- 2. update
update table1 set  name ="lokesh" where name is null;
update table1 set  branch ="bally" where branch is null;
select*from table1;

update table1 set id="100",branch="anjali" where name="shivesh";
select*from table1;

alter table table1 add address text;
select*from table1;
-- 3. delete
update table1 set address="kolkata" where address is null;
select*from table1;
update table1 set address="delhi" where id="100";
update table1 set address="mumbai" where id="102";
select*from table1;

delete from table1 where address="kolkata";
select*from table1;

