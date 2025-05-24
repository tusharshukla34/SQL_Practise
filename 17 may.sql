create database Practice;
use Practice;
create table student(
id INT unique not null,
Name varchar(40),
City varchar(40),
Class varchar(10),
DOB date,
Gender varchar(10),
Marks tinyint unsigned not null
);

INSERT into student (id,Name,city,class,dob,gender,marks)
values(2,'Amit','bhopal','VIII','2004-09-13','male',100),
(3,'saurabh','pune','VII','2004-09-13','male',140),
(4,'sonal','bhopal','II','2001-12-13','male',120),
(5,'neha','bhopal','VIII','2005-06-13','female',190);
SELECT * FROM student;

describe student;