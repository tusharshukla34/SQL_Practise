use practice;
create table company(
emp_id int unique not null,
name varchar(40),
department varchar(20) not null,
joining_date date not null,
salary decimal(8,2)
);
insert into company(emp_id,name,depart,joining_date,salary,country)
values(1,'Rahul','HR','2018-04-10',45000.00,'china'),
	   (2,'Sneha','IT','2019-07-01',60000.50,'china'),
       (3,'Vikram','Finance','2020-01-15',55000.75,'china')
;

select * from company;
alter table company rename column department to depart;

select * from company;

# to add column in table
alter table company add country varchar(50) not null;

# to drop the column
alter table company drop country;


#to update the inner structure
update company set country = "India" where emp_id = 1;
update company set country = "china" where name="sneha";
# to queryfy the specific
select depart,salary from company;

select * from company where country ="India";

#for safe mode disable
set sql_safe_updates = 0;

#for safe mode enable
set sql_safe_updates = 1;

truncate company;
# to add column datatype in table
alter table company modify country varchar(100);
# to rename the column
alter table company change depart department varchar(50);



