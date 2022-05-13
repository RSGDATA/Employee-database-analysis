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

SELECT * FROM departments
SELECT * FROM dept_emp
SELECT * FROM dept_manager
SELECT * FROM salaries


