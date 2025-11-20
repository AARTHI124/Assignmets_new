-- create database company_aa;
use company_aa;
create table employees (
empid int primary key auto_increment, 
firstname varchar(50),
salery decimal(10,2)
);
select * from employees;
insert into employees (empid ,firstname ,salery) values(101,"Aarthi",15000)
insert into employees (empid ,firstname ,salery) values(102,"Keerthi",20000)
insert into employees (empid ,firstname ,salery) values(103,"Harini",25000)
delete from employees where empid = 102;
update employees set firstname='Keerthi', salery = 25000 where empid=102;
-- Create a table named departments with id, name, and description.
create table departments ( 
id int primary key auto_increment,
name varchar(50),
description varchar(50)
);
select * from departments;
insert into departments (id ,name ,description) values (01,"Aarthi","MCA")
insert into departments (id ,name ,description) values (02,"Keerthi","B.sc_Chemistry")
insert into departments (id ,name ,description) values (03,"Harini","B.tech IT")
insert into departments (id ,name ,description) values (04,"Dharshika","B.tech IT")
-- Write a query to show only students from the users table+
create table users (
roll_number int primary key auto_increment,
std_name varchar(50),
std_age int,
std_marks int
);
select * from users;
insert into users (roll_number, std_name, std_age, std_marks) values (111,"Aarthi",23, 99)
insert into users (roll_number, std_name, std_age, std_marks) values (112,"Sangavi",21, 92)
insert into users (roll_number, std_name, std_age, std_marks) values (113,"Kavi",20, 100)
insert into users (roll_number, std_name, std_age, std_marks) values (114,"Rihaan",21, 99)
SELECT std_name from users;
-- Add a new column phone to users.
alter table users add phone int(10)
update users set phone = 90250379 where roll_number = 111;
update users set phone = 90250378 where roll_number = 112;
update users set phone = 90250377 where roll_number = 113;
update users set phone = 90250376 where roll_number = 114;
-- Write a JOIN query to list all students and the courses they are enrolled in.
-- Table 1
create table customer (
cus_id int primary key auto_increment ,
cus_name varchar(50),
city varchar(20)
);
insert into customer (cus_id, cus_name, city) values (1,"Vaasugi","mayiladuthurai")
insert into customer (cus_id,cus_name,city) values (2,"Keerthi","Thiruvanamalai")
insert into customer (cus_id,cus_name,city) values (3,"Rajesh","Chennai")
-- Table 2
create table orders (
    order_id int primary key auto_increment,
    customer_id int,
    order_date date,
    amount decimal(10,2)
);
insert into orders (order_id, customer_id, order_date, amount) values (1,101,'2025-11-17',15000)
insert into orders (order_id, customer_id, order_date, amount) values (2,102,'2025-11-17',20000)
select * from orders;
-- now using query selectoer
select customer.cus_name, customer.city, orders.customer_id, orders.order_date,orders.amount from customer join orders on customer.cus_id = orders.order_id;
-- class work
create table demo_types (
id int primary key auto_increment,
fullname varchar(50),
age int,
salery decimal(10.2),
hire_date date,
login_time datetime,
isactive boolean
);
select * from demo_types;
insert into demo_types(fullname, age, salery, hire_date, login_time, isactive) values ("Aarthi",23,15000,'2025-11-19',now(),1)
insert into demo_types(fullname, age, salery, hire_date, login_time, isactive) values ("Keerthi",24,25000,'2025-11-19',now(),1)
insert into demo_types(fullname, age, salery, hire_date, login_time, isactive) values ("harini",21,20000,'2025-11-19',now(),1)
insert into demo_types(fullname, age, salery, hire_date, login_time, isactive) values ("dharshi",21,12000,'2025-11-19',now(),1)
insert into demo_types(fullname, age, salery, hire_date, login_time, isactive) values ("sangavi",20,11000,'2025-11-19',now(),1)
-- Table 2
create table text_demo (
short_text varchar(50),
para text
);
select * from text_demo;
insert into text_demo (short_text, para) values ("hello world", "Today we’re starting our journey with databases — the systems that store and manage data for almost every app you use. We’ll explore what a database is, the difference between relational and non-relational systems, and why SQL is the standard language for working with relational data. We'll install and use MySQL, learn the basics of Workbench and the command line, and examine how tables, rows, and relationships fit together. By the end, you’ll be confident navigating MySQL and building well-designed databases.")
-- sorting (order by) descending
select * from demo_types order by fullname desc;
-- sorting (order by) ascending
select * from demo_types order by id asc;
-- salery range
select * from demo_types where salery >15000;
-- limit 