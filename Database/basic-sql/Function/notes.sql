-- Numeric 

SELECT ABS(-15);        -- 15
SELECT ROUND(12.3399, 3); -- 12.340

select ceil(12.1);   --13
select floor(12.9);      ---12

-- String

SELECT CONCAT('Hello', ' ','k ', 'Shivesh'); -- Hello kShivesh
SELECT LENGTH('MySQL');   --5
select upper("mysql");    --MYSQL
select lower("MYSQL");         ----mysql

-- Date/Time

SELECT NOW();          -- Current date & time
SELECT DATEDIFF('2026-07-15', '2026-07-12'); -- 3
select CURDATE()               -----current date ONLY

select DATE_ADD("2026-05-12", interval 5 DAY);

-- AGGREGATE function
SELECT SUM(salary) FROM employees;       -- Total salary
SELECT AVG(salary) FROM employees;       -- Average salary
SELECT COUNT(*) FROM employees;          -- Number of rows
SELECT MAX(salary) FROM employees;       -- Highest salary
SELECT MIN(salary) FROM employees;       -- Lowest salary


-- Extract value from JSON

SELECT JSON_EXTRACT('{"name":"Shivesh","age":20}', '$.name',"$.age"); -- "Shivesh"

-- Create JSON array
SELECT JSON_ARRAY('apple', 'banana', 'mangoo','graphes');     -- ["apple","banana","mango"] 
select json_array(1,2,3,4,5);

-- IF function

SELECT IF(500 > 900, 'Yes', 'No');  -- Yes

-- CASE expression
SELECT 
    CASE 
        WHEN salary > 50000 THEN 'High'
        WHEN salary BETWEEN 30000 AND 50000 THEN 'Medium'
        ELSE 'Low'
    END AS salary_category
FROM employees;

