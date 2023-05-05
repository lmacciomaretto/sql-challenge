-- Creating tables first

-- Departments table
CREATE TABLE departments(
	Dept_no VARCHAR (255) PRIMARY KEY NOT NULL,
	Dept_name VARCHAR (255)
); 


-- Import departments.csv

-- Titles table
CREATE TABLE titles(
	title_id VARCHAR (255) PRIMARY KEY NOT NULL,
	title VARCHAR (255)
); 

-- Import titles.csv

-- Salaries table
CREATE TABLE salaries(
	emp_no INTEGER PRIMARY KEY NOT NULL,
	salary INTEGER NOT NULL
); 

-- Import salaries.csv


-- Dept_emp table
CREATE TABLE dept_emp(
	id SERIAL PRIMARY KEY,
	emp_no INTEGER NOT NULL,
	dept_no VARCHAR (255) NOT NULL,
	FOREIGN KEY(emp_no) references salaries(emp_no),
	FOREIGN KEY(dept_no) references departments(dept_no)
); 

-- Import dept_emp.csv

-- Dept_manager table
CREATE TABLE dept_manager(
	id SERIAL PRIMARY KEY,
	dept_no VARCHAR (255) NOT NULL,
	emp_no INTEGER NOT NULL,
	FOREIGN KEY(emp_no) references salaries(emp_no),
	FOREIGN KEY(dept_no) references departments(dept_no)
); 

-- Import dept_manager.csv

-- Employees table
DROP TABLE employees;
CREATE TABLE employees(
	emp_no INTEGER NOT NULL,
	emp_title_id VARCHAR (255) NOT NULL,
	birth_date VARCHAR (255) NOT NULL,
	first_name VARCHAR (255) NOT NULL,
	last_name VARCHAR (255) NOT NULL,
	sex VARCHAR (20) NOT NULL,
	hire_date VARCHAR (255) NOT NULL,
	FOREIGN KEY(emp_no) references salaries(emp_no),
	FOREIGN KEY(emp_title_id) references titles(title_id)
); 


-- Adding primary keys
ALTER TABLE employees
ADD PRIMARY KEY (emp_no);

-- Import employees.csv
SELECT * FROM employees;

