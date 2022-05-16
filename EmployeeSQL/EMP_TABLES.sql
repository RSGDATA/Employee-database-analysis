DROP TABLE departments cascade;
DROP TABLE dept_emp

select table_schema,
table_name
from information_schema.tables

CREATE TABLE departments(
	dept_no VARCHAR(30) NOT NULL PRIMARY KEY,
	dept_name VARCHAR (30) NOT NULL
);



DROP TABLE dept_emp cascade;

CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR(30) NOT NULL,
	PRIMARY KEY(emp_no,dept_no)
	
);

DROP TABLE dept_manager cascade;

CREATE TABLE dept_manager(
	
	dept_no VARCHAR(30) NOT NULL,
	emp_no INT NOT NULL,
	PRIMARY KEY (emp_no),
	CONSTRAINT fk_departments
		FOREIGN KEY (dept_no)
			REFERENCES departments(dept_no)
	
	
);

CREATE TABLE salaries(
	emp_no INT NOT NULL PRIMARY KEY,
	salary INT NOT NULL
);
DROP TABLE employees cascade;

CREATE TABLE employees(
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(30) NOT NULL,
	PRIMARY KEY(emp_no,emp_title_id),
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(30) NOT NULL,
	hire_date DATE NOT NULL
	
);

CREATE TABLE titles(
	title_id VARCHAR(30) NOT NULL PRIMARY KEY,
	title VARCHAR(30) NOT NULL
);

SELECT * FROM departments
SELECT * FROM dept_emp
SELECT * FROM dept_manager
SELECT * FROM salaries
SELECT * FROM employees
SELECT * FROM titles

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
	COUNT(employees.last_name) AS emp_count
FROM employees
GROUP BY employees.last_name
ORDER BY emp_count DESC;




SELECT * FROM departments
SELECT * FROM dept_emp
SELECT * FROM dept_manager
SELECT * FROM salaries
SELECT * FROM employees
SELECT * FROM titles



