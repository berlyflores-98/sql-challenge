select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees as e
join salaries as s on e.emp_no = s.emp_no;

select e.first_name, e.last_name, e.hire_date
from employees as e
where e.hire_date LIKE '%1986';

select d.dept_no,d.dept_name,dm.emp_no, e.last_name, e.first_name
from department as d
join dept_manager as dm on d.dept_no = dm.dept_no
join employees as e on e.emp_no = dm.emp_no;

select e.emp_no, e.last_name, e.first_name, d.dept_name
from department as d
join dept_emp as de on d.dept_no = de.dept_no
join employees as e on e.emp_no = de.emp_no;

select e.first_name, e.last_name, e.sex
from employees as e
where e.first_name = 'Hercules' and e.last_name LIKE 'B%';

select e.emp_no, e.last_name, e.first_name, d.dept_name
from department as d
join dept_emp as de on d.dept_no = de.dept_no
join employees as e on e.emp_no = de.emp_no
where d.dept_name = 'Sales';

select e.emp_no, e.last_name, e.first_name, d.dept_name
from department as d
join dept_emp as de on d.dept_no = de.dept_no
join employees as e on e.emp_no = de.emp_no
where d.dept_name = 'Sales' OR d.dept_name = 'Development';