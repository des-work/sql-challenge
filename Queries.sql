--List the employee number, last name, first name, sex, and salary of each employee.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries s
ON e.emp_no = s.emp_no
;


-- 2. List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT e.first_name, e.last_name,e.hire_date
FROM employees e
where hire_date >= '1986-01-01' 
and hire_date <= '1986-12-31';


--3.List the manager of each department along with their department number, department name, employee number, last name, and first name
SELECT dept_manager.emp_no, departments.department_no, departments.deparmtent_name, employees.emp_no, employees.last_name, employees.first_name
FROM departments
LEFT JOIN dept_manager
ON departments.department_no = dept_manager.dep_num
LEFT JOIN employees
ON employees.emp_no = dept_manager.emp_no;

--4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name
SELECT d.department_no, employees.emp_no, employees.last_name , employees.first_name, d.deparmtent_name
from dept_emp
join departments d
on dept_emp.dept_no = d.department_no
join employees 
on dept_emp.emp_no = employees.emp_no;


--5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
SELECT first_name, last_name, sex
From employees
Where first_name = 'Hercules'
AND last_name like 'B%';

--6. List each employee in the Sales department, including their employee number, last name, and first name 
select dept_emp.emp_no,employees.last_name,employees.first_name
from dept_emp
join employees 
on dept_emp.emp_no = employees.emp_no
join departments 
on dept_emp.dept_no = departments.department_no
where deparmtent_name = 'Sales';


--8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
select distinct(last_name), count(last_name) as Frequency
from employees
group by distinct(last_name)
order by count(last_name) desc;

