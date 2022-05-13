DROP TABLE departments cascade;
DROP TABLE dept_emp

select table_schema,
table_name
from information_schema.tables

CREATE TABLE departments(
	dept_no VARCHAR(30) NOT NULL PRIMARY KEY,
	dept_name VARCHAR (30) NOT NULL
);

SELECT * FROM departments

DROP TABLE dept_emp cascade;

CREATE TABLE dept_employee(
	

);