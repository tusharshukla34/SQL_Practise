create database db1;
use db1;
create table department(
dept_id int primary key,
dept_name varchar(50) not null);
create table employee(
emp_id int primary key,
emp_name varchar(50),
dept_id int,
-- how to create a foreign key
foreign key (dept_id) references department(dept_id)
);
describe department;
-- how to drop a foreign key
alter table employee drop foreign key employee_ibfk_1;
alter table employee drop key dept_id;

-- to add foreign key after creating the table
alter table employee add foreign key(dept_id) references department(dept_id);


-- to modify data type
alter table employee modify emp_name varchar(30); 
describe employee;

-- to remove primary key first we have to remove the relation ship(foreign key)
alter table department drop primary key;


alter table employee drop foreign key employee_ibfk_1;
alter table employee drop key dept_id;

describe dept;
rename table `dept table` to dept;
alter table dept rename column dept_name to department_name;



insert into employee(emp_id,emp_name,dept_id)
values(1,'CSE',2),(2,'ME',3);
       
insert into dept(dept_id,dept_name)
values(1,'DS'),(2,'DA');
       
       
       
# change the table name of first  and then change column name of another table and then create a foreign key and then try to insert 
       
 select * from employee;      
