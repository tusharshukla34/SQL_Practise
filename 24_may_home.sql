use groupby;
show tables;


select * from departments;
select * from employees;


# 1.Show the total numbers of employees in each department

select count(department_id) as total_emp , department_name from departments d inner join employees
using(department_id) group by department_name;



# 2.Display the average salary of employees in each department

select avg(salary) as avg_salary , department_name from departments inner join employees
using(department_id) group by department_name;



# 3.List departments and their highest salary

select max(salary) as max_salary , department_name from departments inner join employees 
using(department_id) group by department_name;



# 4.Show the lowest salary in each department

select min(salary) as min_salary , department_name from departments inner join employees
using(department_id) group by department_name;



# 5.Display the department name with the total salary paid to its employees

select sum(salary) as total_salary , department_name from departments inner join employees 
using(department_id) group by department_name;



# 6.list each department and count of employees  hired after '2020-01-01'

select count(employee_id) as total_emp , department_name from departments inner join employees 
using(department_id) where hire_date > "2020-01-01" group by department_name;



# 7.Show department names and the number of employees whose salary is more than 60000.

select department_name , count(employee_id) as total_emp from departments inner join employees
using(department_id) where salary > 60000 group by department_name;



# 8.Display departments where the average salary is greater than 60000.

select department_name , avg(salary) as avg_salary from departments inner join employees 
using(department_id) group by department_name having avg_salary > 60000;



# 9.Find the total number of departments that have more than 2 employees.

select count(employee_id) as total_emp , department_name from departments inner join employees 
using(department_id) group by department_id having total_emp > 2;  
-- not correct



# 10.Show the name of each department along with the sum of salary for employees hired in 2021.

select department_name , sum(salary) as total_salary_of_emp_hired_after_2021 from departments inner join employees
using(department_id) where hire_date between "2021-01-01" and "2021-12-31" group by department_name;



# 11.List department and the earliest hire date among their employees.

select department_name , min(hire_date) as earliest_emp_hire_date from departments inner join employees
using(department_id) group by department_name;

