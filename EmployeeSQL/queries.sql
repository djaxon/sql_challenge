-- 1.) list employee number, last name, first name, sex, and salary -- 

select salaries.emp_no, last_name, first_name, sex, salary
from salaries
inner join employees on salaries.emp_no = employees.emp_no;

-- 2.) list first name, last name, and hire date for employees hired in 1986 -- 

select first_name, last_name, hire_date from employees
where extract(year from hire_date) = 1986

-- 3.) list department number, dept name, manager's employee no, last name and first name --

select dept_manager.emp_no, dept_manager.dept_no, dept_name, last_name, first_name
from departments 
inner join dept_manager
on departments.dept_no = dept_manager.dept_no
inner join employees
on dept_manager.emp_no = employees.emp_no;

-- 4.) list each employee w/ employee no, last name, first name and dept name --

select employees.emp_no, last_name, first_name, departments.dept_name
from employees
inner join dept_emp
on employees.emp_no = dept_emp.emp_no
inner join departments
on dept_emp.dept_no = departments.dept_no;

-- 5.) list first name, last name, and sex for employees whose first name is "Hercules" and last name begins with "B" --
select first_name, last_name, sex
from employees
where first_name = 'Hercules'
and left(last_name,1) = 'B'

-- 6.) list all employees in sales department, including employee no, last name, first name, dept name --

select employees.emp_no, last_name, first_name, departments.dept_name
from employees
inner join dept_emp
on employees.emp_no = dept_emp.emp_no
inner join departments
on dept_emp.dept_no = departments.dept_no
where departments.dept_name = 'Sales';

-- 7.) list all employees in sales and development department, including employee no, last name, first name, dept name --

select employees.emp_no, last_name, first_name, departments.dept_name
from employees
inner join dept_emp
on employees.emp_no = dept_emp.emp_no
inner join departments
on dept_emp.dept_no = departments.dept_no
where departments.dept_name = 'Sales'
or departments.dept_name = 'Development';

-- 8.) in desc order, frequency count of employee last names, how many employees share each last name --

select distinct(last_name) as unique_last_names, count(last_name) as count_last_names
from employees
group by unique_last_names 
order by count_last_names desc;

-- Epilogue query employee id number 499942 --
select salaries.emp_no, last_name, first_name, sex, salary
from salaries
inner join employees on salaries.emp_no = employees.emp_no
where salaries.emp_no = 499942;

