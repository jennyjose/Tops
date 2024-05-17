CREATE DATABASE company1;

DROP DATABASE company1;

CREATE DATABASE company;
USE company;

CREATE TABLE department
(dept_id int PRIMARY KEY,
dept_name varchar(2),
address varchar(50));

CREATE TABLE employee
(emp_id int PRIMARY KEY,
first_name varchar(50), 
last_name varchar(50),
salary float,
age int,
dept_id int REFERENCES department(dept_id));


INSERT INTO department VALUES
(1,"A","HR"),
(2,"B","Admin"),
(3,"C","IT"),
(4,"D","Accounting"),
(5,"E","Design"),
(6,"F","Sales"),
(7,"G","Marketing"),
(8,"H","Finance"),
(9,"I","Maintenance"),
(10,"J","Research");


INSERT INTO employee VALUES
(1,"Jenny","Jose",600000,27,1),
(2,"Astha","Soni",500000,27,2),
(3,"Nandita","Rawat",700000,24,3),
(4,"Tincy","Thomas",300000,27,1),
(5,"Jerry","Raju",100000,28,2),
(6,"Jose","VM",900000,30,1),
(7,"Christie","Prasad",90000,22,5),
(8,"Krishna","Vaghela",300000,23,3),
(9,"Rashmi","Singh",500000,23,7),
(10,"Max","Well",450000,30,8);


SELECT * FROM department;

SELECT * FROM employee;

SELECT e.* FROM employee e , department d WHERE e.dept_id = d.dept_id AND d.dept_name="A";