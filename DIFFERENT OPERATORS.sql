create table employee2(
employee_id int primary key,
first_name varchar(20) not null,
last_name varchar(20) not null,
department varchar(20),
salary numeric(10,2),
joining_date date,
age int

);
select *from employee2;

-- Just click on table and add data dont forgot to enable the header option and csv stand for comma separted values and in csv format the delimeter is comma
-- 1. RETRIEVE EMPLOYEE WHOSE SALARY IS BETWEEN 40,000 AND 60,000 (IN THIS CASE WE WILL USE THE BETWEEN OPERATOR)
select first_name, last_name, salary 
from employee2
where salary between 40000 and 60000;

--2. find the person whose department ends with Operations(IN THIS CASE WE WILL USE THE LIKE OPERATOR)
select first_name, last_name, department
from employee2
where department like '%Operations';

-- 3. retrieve the employees who belong to either the 'finance' or 'marketing' departments (IN THIS CASE WE WILL USE IN OPERATOR)
select first_name, last_name, department
FROM employee2
where department in ('Finance' , 'Marketing');
-- 4. retrieve only top 3 highest salary person with first and their respective department (IN THIS CASE WE WILL USE THE LIMIT OPERATOR)
select first_name, department, salary
from employee2
order by salary desc
limit 3;