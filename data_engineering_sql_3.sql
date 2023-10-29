create table titles (
	title_id VARCHAR PRIMARY KEY,
	title VARCHAR NOT NULL
);

create table employees (
	emp_no SERIAL PRIMARY KEY,
	title_id VARCHAR NOT NULL,
    FOREIGN KEY (title_id) REFERENCES titles(title_id),
	birth_date VARCHAR NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE NOT NULL
);

create table departments (
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR NOT NULL
);

create table salaries (
	id SERIAL PRIMARY KEY,
	emp_no INTEGER NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	salary INTEGER NOT NULL
);

CREATE TABLE dept_emp (
  id SERIAL PRIMARY KEY,
  emp_no INTEGER NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  dept_no VARCHAR NOT NULL,
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

create table dept_manager (
	id SERIAL PRIMARY KEY,
	dept_no VARCHAR NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no INTEGER NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


