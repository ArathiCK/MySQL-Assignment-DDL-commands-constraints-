--- mysql assignments 1 ---
--- DDL Commands and Constraints ---

--- 1. DDL commands ---

Create Database employee;
use employee;
create table departments(department_id int , department_name varchar(100));
Create table location(location_id int , location varchar(30));
create table Employees(employee_id int, employee_name varchar(50), gender enum('M','F'), age int , hire_date date , designation varchar(100), department_id int,
location_id int, salary decimal(10,2));
SHOW TABLES;
ALTER TABLE employees add column email varchar(255);
alter table employees modify column designation varchar(255);
alter table employees drop column age;
alter table employees rename column hire_date to date_of_joining;
rename table departments to departments_info;
rename table location to locations;
show tables;
truncate  table employees;
drop table employees;
drop database employee;

--- 2. Constraints ---

drop database if exists employee;
create database employee;
use employee;
create table departments(department_id int primary key, department_name varchar (100) not null unique);
create table location(location_id int auto_increment primary key, location varchar(30) not null unique);
create table employees(employee_id int primary key, employee_name varchar(50) not null, genter enum("M","F"), age int check (age>=18), hire_date date default (current_date),
designation varchar(100), Department_id int, location_id int, salary decimal(10,2),
 FOREIGN KEY (department_id) REFERENCES departments(department_id),FOREIGN KEY (location_id) REFERENCES location(location_id));

