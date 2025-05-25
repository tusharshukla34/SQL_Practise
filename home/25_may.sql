create database groupby;
use groupby;


CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

INSERT INTO Departments VALUES
(1, 'Sales'),
(2, 'Marketing'),
(3, 'Finance'),
(4, 'HR'),
(5, 'IT');
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100),
    department_id INT,
    salary DECIMAL(10,2),
    hire_date DATE,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

INSERT INTO Employees VALUES
(101, 'Alice', 1, 55000, '2021-01-15'),
(102, 'Bob', 2, 60000, '2020-03-10'),
(103, 'Charlie', 1, 52000, '2019-07-23'),
(104, 'David', 3, 75000, '2018-11-12'),
(105, 'Eva', 4, 48000, '2022-06-01'),
(106, 'Frank', 1, 57000, '2021-08-19'),
(107, 'Grace', 2, 62000, '2023-01-05'),
(108, 'Helen', 3, 77000, '2019-02-17'),
(109, 'Ian', 5, 69000, '2020-09-09'),
(110, 'Jane', 5, 72000, '2021-12-12');




select * from departments;
select * from employees;



# 1.Show the number of employees in each department.

select count(*) as total_emp , department_name from departments inner join employees
using(department_id) group by department_name;


# 2.Display the average salary of employees in each department.

select avg(salary) as avg_salary , department_name from departments inner join employees
using(department_id) group by department_name;


# 3.List departments and their highest salary.

select max(salary) as highest_salary , department_name from departments inner join employees
using(department_id) group by department_name;


# 4.Show the lowest salary in each department.

select min(salary) as lowest_salary , department_name from departments inner join employees 
using(department_id) group by  department_name;


# 5.Dispaly the department name with the lowest salary paid to its employees.

select department_name, min(salary) as min_salary from departments inner join  employees
using(department_id) group by department_name order by min_salary limit 1;


# 6.List each department and count of employees hired after '2020-01-01'

select department_name , count(employee_id) as total_emp_after_2020 from departments inner join employees
using(department_id) where hire_date > "2020-01-01" group by department_name;


# 7.Show departments names and the number of employees whose salary is more than 60000.

select department_name , count(*) as total_emp from departments inner join employees 
using(department_id) where salary > 60000 group by department_name;


# 8.Display department where average salary is greater than 60000.

select department_name , avg(salary) as avg_salary from departments inner join employees
using(department_id) group by department_name having avg_salary > 60000;


# 9.Find total numbers of departments that have more than 2 employees.

select department_name , count(employee_id) as total_emp from departments inner join employees 
using(department_id) group by department_name having  total_emp > 1;


select * from departments;
select * from employees;


# 10.Show the name of each department along with the sum of salary for employees hired in 2021

select department_name , sum(salary) as total_salary_of_emp_hired_in_2021 from departments inner join employees 
using(department_id) where hire_date between "2021-01-01" and "2021-12-31" group by department_name;


# 11.List department and the earliest hire date among their employees.

select department_name, min(hire_date) as earliest_hire from departments inner join employees 
using(department_id) group by department_name;


# 12.For each department , display the latest hire date and the total number of employees

select department_name, max(hire_date) as latest_hire_date , count(employee_id) as total_emp from departments inner join employees
using(department_id) group by department_name;


# 13.show departments having total salary greater than 150000.

select department_name , sum(salary) as total_salary from departments inner join employees 
using(department_id) group by department_name having total_salary > 150000;


# 14.Show department names and average salary of employees whose name start with "A" to "M"

select department_name , avg(salary) as avg_salary from departments inner join employees
using(department_id) where name between "A%" and "M%" group by department_name;


# 15.Dispaly the count of employees grouped by department and year of hire.

select department_name, year(hire_date) as hire_year ,count(employee_id) as total_emp  from departments inner join employees 
using(department_id) group by department_name , hire_year; 


# 16.List all department and how many employees earn more than the average salary of their department.

select department_name ,  count(employee_id) as total_emp ,avg(salary) as avg_salary from departments inner join employees 
using(department_id) group by department_name having  avg_salary > avg_salary;


select * from departments;
select * from employees;


# 17.Show each department with number of employees earning below 60000.

select department_name , count(employee_id) as total_emp_earning_less_than_60000 from departments inner join employees
using(department_id) where salary < 60000 group by department_name; 


# 18.Display department names with the total salary of employees who joined before 2020.

select department_name , sum(salary) as total_salary_of_emp_joined_before_2020 from departments inner join employees
using(department_id) where hire_date < "2019-12-31" group by department_name;


# 19.Show departments names and the count of employees who joined each year.

select department_name , year(hire_date) as year_date , count(employee_id) from departments inner join employees
using(department_id) group by department_name , year_date;


# 20.For each department display average salary and lable it as 'High' if avg > 60000, else 'low'.

select department_name , avg(salary) as avg_salary,
 case
when avg(salary) > 60000 then 'High' 
else 'Low'
END as salary_level
from departments inner join employees 
using(department_id)  group by department_name;