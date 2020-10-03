CREATE TABLE titles(
	title_id VARCHAR(5) PRIMARY KEY,
	title VARCHAR(50) NOT NULL
);

CREATE TABLE department(
	dept_no VARCHAR(4) PRIMARY KEY,
	dept_name VARCHAR(50) Not Null
);

CREATE TABLE employees (
    emp_no SERIAL PRIMARY KEY,
    emp_title_id VARCHAR(5) REFERENCES titles(title_id),
	birth_date text,
    first_name VARCHAR(30),
    last_name VARCHAR(50),
    sex VARCHAR(2),
	hire_date text
);

CREATE TABLE salaries(
	emp_no INTEGER REFERENCES employees(emp_no),
	salary INTEGER
);

CREATE TABLE dept_manager(
	dept_no VARCHAR(5) REFERENCES department(dept_no),
	emp_no INTEGER REFERENCES employees(emp_no)
);

CREATE TABLE dept_emp(
	emp_no INTEGER REFERENCES employees(emp_no),
	dept_no VARCHAR(5) REFERENCES department(dept_no)
);