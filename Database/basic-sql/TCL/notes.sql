-- What is TCL in MySQL?
-- Definition: TCL(transaction control language) controls how changes made by DML (INSERT, UPDATE, DELETE) are finalized or undone.

-- Purpose: Ensures data integrity and consistency when multiple queries run together.

-- Key Idea: If one query fails, you can roll back the entire transaction instead of leaving the database in a half-changed state.


create database TCl;
use TCL;
create table table1(id int,name varchar(29),branch text);
insert into table1 values(101,"shivesh","konnagar"),(102,"sumant","belur"),(103,"sudiop","barrackpore"),(104,"rahul","rishra");
select*from table1;

start TRANSACTION;
update table1 set branch="rishra" where id='101';
select*from table1;
savepoint sp1;
update table1 set branch="liluah" where id='102';
rollback to sp1;

commit;





