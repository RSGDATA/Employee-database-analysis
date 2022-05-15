-------------------------------

-- 1. List the following details of each employee: 
--employee number, last name, first name, sex, and salary.

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary 
FROM employees AS e
LEFT JOIN salaries AS s
ON e.emp_no=s.emp_no;


-- 2. List first name, last name, and hire date
-- for employees who were hired in 1986

SELECT first_name, last_name, hire_date
FROM employees 
WHERE hire_date BETWEEN '1986-1-1' AND '1986-12-31';

SELECT first_name, last_name, hire_date
FROM employees 
WHERE CAST (hire_date AS VARCHAR)  LIKE '1986%';


-- 3. List the manager of each department with the following information: 
-- department number, department name, the manager's employee number,
-- last name, first name.
SELECT dm.dept_no, dm.emp_no, d.dept_name, e.first_name, e.last_name
FROM dept_manager AS dm
LEFT JOIN departments AS d
ON dm.dept_no=d.dept_no
LEFT JOIN employees AS e
ON e.emp_no=dm.emp_no;

--4. List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name AS employees, d.dept_name AS departments
FROM employees e, departments d;

--5. List first name, last name, and sex for employees
-- whose first name is "Hercules" and last names begin with "B."

SELECT first_name, last_name, sex
FROM employees 
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--6. List all employees in the Sales department, including their employee number,
-- last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name AS employees, d.dept_name AS departments
FROM employees e, departments d
WHERE d.dept_name = 'Sales';

--7. List all employees in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name AS employees, d.dept_name AS departments
FROM employees e, departments d
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

-- 8 List the frequency count of employee last names 
-- (i.e., how many employees share each last name) in descending order

SELECT employees.last_name,
	COUNT(employees.last_name) AS emp_no
FROM employees
GROUP BY employees.last_name
ORDER BY employees.last_name DESC;
