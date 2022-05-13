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
			REFERENCES departments (dept_no)
	
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




