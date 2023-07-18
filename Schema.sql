CREATE TABLE departments
(department_no VARCHAR Primary Key,
deparmtent_name CHAR(30) NOT NULL)

;

CREATE TABLE titles
(title_id VARCHAR(30) Primary Key,
title CHAR(30) NOT NULL)

;

CREATE TABLE employees
(emp_no INT NOT NULL Primary Key,
emp_title_id VARCHAR NOT NULL,
 	foreign key (emp_title_id) references titles(title_id),
birth_date DATE NOT NULL,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
sex CHAR(1) NOT NULL,
hire_date DATE NOT NULL)
;

CREATE TABLE dept_emp
(emp_no INT NOT NULL,
 	foreign key(emp_no) references employees(emp_no),
dept_no VARCHAR(5)NOT NULL,
	foreign key (dept_no) references departments(department_no)
)
;

CREATE TABLE dept_manager
(dep_num VARCHAR(30) NOT NULL,
    foreign key (dep_num) references departments(department_no),
emp_no INT NOT NULL,
   foreign key (emp_no) references employees (emp_no)
)
;


CREATE TABLE salaries
(emp_no INT NOT NULL,
 	foreign key (emp_no) references employees(emp_no),
salary INT NOT NULL)
;



DROP TABLE IF EXISTS departments cascade;
DROP TABLE IF EXISTS dept_emp cascade;
DROP TABLE IF EXISTS dept_manager cascade;
DROP TABLE IF EXISTS employees cascade;
DROP TABLE IF EXISTS salaries cascade;
DROP TABLE IF EXISTS titles cascade;

select * from titles;
select * from departments;
select * from employees;
select * from dept_emp;
select * from salaries;
select * from dept_manager;







