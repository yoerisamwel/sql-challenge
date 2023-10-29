SELECT salaries.emp_no, salaries.salary, employees.emp_no, 
employees.first_name, employees.last_name, employees.sex
FROM employees
INNER JOIN salaries ON
salaries.emp_no=employees.emp_no;


SELECT first_name, last_name, DATE_PART('YEAR',hire_date) AS hired_year
FROM employees
WHERE hired_year = '1986'

SELECT dept_manager.dept_no, dept_manager.emp_no, employees.emp_no, 
employees.first_name, employees.last_name
FROM dept_manager
INNER JOIN employees ON
employees.emp_no=dept_manager.emp_no;

SELECT departments.dept_no, departments.dept_name, employees.emp_no, 
employees.first_name, employees.last_name, dept_emp.emp_no, dept_emp.dept_no
FROM dept_emp
INNER JOIN employees ON
dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON
dept_emp.dept_no = departments.dept_no;

SELECT departments.dept_no, departments.dept_name, employees.emp_no, 
employees.first_name, employees.last_name, dept_emp.emp_no, dept_emp.dept_no
FROM dept_emp
INNER JOIN employees ON
dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON
dept_emp.dept_no = departments.dept_no
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT departments.dept_no, departments.dept_name, employees.emp_no, 
employees.first_name, employees.last_name, dept_emp.emp_no, dept_emp.dept_no
FROM dept_emp
INNER JOIN employees ON
dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON
dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

SELECT last_name, COUNT(last_name) 
FROM employees
GROUP BY last_name;
