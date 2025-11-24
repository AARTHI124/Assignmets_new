create database sample_db;
use sample_db;
create table departments(
name varchar(100),
location varchar(100)
);
INSERT INTO departments (name, location) VALUES
('Engineering', 'Bengaluru'),
('Human Resources', 'Mumbai'),
('Sales', 'Delhi'),
('Marketing', 'Pune'),
('Finance', 'Hyderabad');

create table employees (
id int primary key auto_increment,
first_name varchar(100),
last_name varchar(100),
salary decimal(10,2),
hire_date date,
dep_id int,
active boolean
);
select * from employees;
INSERT INTO employees 
(first_name, last_name, salary, hire_date, dep_id, active) 
VALUES
-- Engineering (Dept 1)
('Asha', 'Patel', 70000, '2022-03-01', 1, 1),
('Rahul', 'Mehra', 82000, '2021-07-10', 1, 1),
('Karan', 'Singh', 95000, '2019-11-12', 1, 1),
('Sneha', 'Desai', 60000, '2020-04-15', 1, 1),
('Vikram', 'Rao', 78000, '2018-08-05', 1, 1),
('Priya', 'Iyer', 88000, '2023-01-10', 1, 1),

-- Human Resources (Dept 2)
('Sima', 'Roy', 50000, '2020-11-05', 2, 1),
('Anita', 'Kapoor', 52000, '2022-06-20', 2, 1),
('Pooja', 'Seth', 48000, '2021-02-17', 2, 1),
('Deepak', 'Chauhan', 55000, '2019-03-11', 2, 0),
('Farah', 'Qureshi', 54000, '2023-02-18', 2, 1),
('Rohit', 'Talwar', 51000, '2022-10-10', 2, 1),

-- Sales (Dept 3)
('Arjun', 'Sharma', 45000, '2023-01-25', 3, 1),
('Nisha', 'Verma', 58000, '2021-04-01', 3, 1),
('Sameer', 'Khan', 62000, '2018-12-15', 3, 1),
('Yusuf', 'Ali', 53000, '2020-05-30', 3, 0),
('Tina', 'Mathew', 65000, '2019-09-14', 3, 1),
('Ramesh', 'Gupta', 47000, '2022-11-05', 3, 1),

-- Marketing (Dept 4)
('Meera', 'Joshi', 70000, '2019-06-21', 4, 1),
('Aditya', 'Shetty', 72000, '2022-01-11', 4, 1),
('Kavya', 'Nair', 69000, '2021-03-19', 4, 1),
('Harish', 'Dutta', 64000, '2023-07-10', 4, 1),
('Payal', 'Rathod', 61000, '2020-10-28', 4, 0),
('Suresh', 'Bhat', 75000, '2018-02-02', 4, 1),

-- Finance (Dept 5)
('Neha', 'Kulkarni', 80000, '2019-12-12', 5, 1),
('Sunil', 'Borkar', 82000, '2020-07-01', 5, 1),
('Divya', 'Jain', 77000, '2021-11-17', 5, 1),
('Manish', 'Goyal', 83000, '2022-04-25', 5, 1),
('Bhavna', 'Arora', 76000, '2023-03-18', 5, 1),
('Kishor', 'Mahadevan', 69000, '2018-05-20', 5, 0);
select * from employees;
-- distint removes duplicate shows only unique values
select distinct dep_id from employees;
-- aggrigate is used for groping the table 
select dep_id, count(*) from employees group by dep_id
-- having
-- filers grouped results after group by
-- diffrenece where and having
-- where - filters by grouping - cannot use aggrigate
-- having - filters after grouping- can use aggriates
-- as is used when we want show result in tremp column

-- count
select count(*) as total_emp from employees
select count(*) as active_employee from employees where active =1

-- add total salery(sum)
select sum(salary) as total_salery from employees;

-- average
select avg(salary) as avg_salary from employees;

-- select
select min(salary) as lowest_sal, max(salary) as high_sal from employees

-- 21-11-2025

-- in keyword
-- matches any value from list
select dep_id, first_name, last_name,salary from employees where dep_id in (3,5) ;

-- And
-- both condition must be true
select first_name, last_name,salary from employees where salary >80000 and active =1;

-- or 
-- atleast one condtion must be true
select dep_id first_name, last_name,salary from employees where dep_id=1 or dep_id=2;

-- having
-- filters grouped results
-- used only with group by

select dep_id, avg(salary) as avg_salary from employees group by dep_id having avg(salary)>70000;
