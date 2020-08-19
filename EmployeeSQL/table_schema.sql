

Create table employees (
	emp_no integer PRIMARY KEY not null,
	title_id VARCHAR(100),
	birth_date date,
	first_name VARCHAR(200),
	last_name VARCHAR(200),
	sex VARCHAR(6),
	hire_date date
	);
	
Create table salaries (
	emp_no integer PRIMARY KEY not null,
	salary money
	);

Create table titles (
	title_id VARCHAR(100) PRIMARY KEY not null,
	title VARCHAR(100)
	);


Create table dept_emp (
	emp_no integer PRIMARY KEY not null,
	dept_no VARCHAR(100) not null
	);
	

Create table Departments (
	dept_no VARCHAR(100) PRIMARY KEY not null,
	dept_name VARCHAR(200)
	);
	
	
Create table dept_manager (
	dept_no VARCHAR(100) not null,
	emp_no integer PRIMARY KEY not null
	);

select * from employees
select * from salaries
select * from titles
select * from dept_emp
select * from dept_manager
select * from departments

