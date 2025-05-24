create database groupby;
use groupby;
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);
show tables;
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




select count(*) as emp_count, department_name from departments d inner join
employees e on d.department_id = e.department_id group by department_name having emp_count > 1;


select sum(salary) as total_sum , department_name from departments d inner join
employees e on d.department_id = e.department_id group by department_name;

select sum(salary) as total_sum , department_name from departments d inner join
employees e on d.department_id = e.department_id group by department_name order by total_sum desc limit 1;

select * from employees;
select * from departments;

#Show the total number of employees in each department.

select avg(salary) as avg_t , department_name from departments d inner join
employees e on d.department_id = e.department_id group by department_name;


 #List departments and their highest salary.
 
select max(salary) as max_em , department_name from departments d inner join
employees e on d.department_id = e.department_id group by department_name ;

#Show the lowest salary in each department.

select min(salary) as max_em , department_name from departments d inner join
employees e on d.department_id = e.department_id group by department_name ;


#Display the department name with the total salary paid to its employees.

select sum(salary) as total_sum , department_name from departments d inner join
employees e on d.department_id = e.department_id group by department_name;

#List each department and count of employees hired after '2020-01-01'.

select count(e.employee_id) as total_emp,department_name from departments d inner join employees e on 
d.department_id = e.department_id  where hire_date > "2020-01-01" group by department_name;


#Show department names and the number of employees whose salary is more than 60000.

select department_name ,count(salary) as toatl_sal from departments d inner join 
employees e where salary > 1000 group by department_name;






