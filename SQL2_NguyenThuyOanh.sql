
select * from employees
select * from departments

Ex 6:
select e.department_id, e.last_name, e.job_id from employees e 
Inner join departments d on e.department_id = d.department_id 
where d.department_name = 'Executive'

Ex 7: 
select employee_id, last_name, salary from employees 
where salary > (select avg (salary) from employees) and department_id in 
(select department_id from employees where last_name like '%u%')

Ex 8:
select max(salary) as 'Maximum', 
min(salary) as 'Minimum', 
Sum(salary) as 'Sum', 
ROUND(avg(salary),0) as 'Average'
from employees;

Ex 9:
select last_name, len(last_name) as 'Length'
from employees
where last_name LIKE 'J%' 
or last_name LIKE 'A%' 
or last_name LIKE 'M%';

Ex 10:
select employee_id, last_name, salary, ROUND(salary*1.155,0) as 'New Salary'
from employees;

Ex 11:
select e.last_name, e.department_id, d.department_name
from employees e
full join departments d
on e.department_id = d.department_id;

Ex 12:
select e.employee_id, e.first_name, e.last_name, d.location_id
from employees e
join departments d
on e.department_id = d.department_id
where hire_date > (select hire_date from employees where employee_id = '100')
and location_id in (select location_id from locations where city = 'Toronto');

