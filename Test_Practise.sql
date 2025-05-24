create database cybrom;
use cybrom;

create table info(stu_id int primary key, name varchar(30) not null,
 age int check(age>18) , course varchar(40) not null , phone bigint unique not null,
 DOB date , city varchar(30) default 'Bhopal');
 
 describe info;
 
 insert into info(stu_id,name,age,course,phone,DOB,city)
 values(1,"Amit",19,"AA",0011,"2004-12-23","indore"),
 (2,"Aman",29,"BB",0091,"2012-2-23","indore"),
 (3,"Ajay",19,"BC",0051,"2007-1-23","indore"),
 (4,"Abishek",24,"BV",5011,"2005-3-23"),
 (5,"yash",34,"EB",0611,"2003-6-23"),
 (6,"suraj",24,"UB",3411,"2002-6-23"),
 (7,"sallu",20,"BR",7811,"2001-9-23");
 
 
 select * from student;
 update info set city =default where stu_id = 4;
 update info set city = default where stu_id=5;
 update info set city = default where stu_id=6;
 update info set city=default where stu_id =7;
 
 
 alter table info rename column stu_id to id;
 alter table info change column phone phone_no int;
 
 alter table info rename to student;
 alter table student add column country varchar(50);
 alter table student drop country;
 
 update student set course = "CD" where id =6;
 select * from student where name like '%u';
 select * from student where name not like 'a%';
 select * from student where age between 20 and 30;
 
 select * from student where age is null;
 
 select * from student where age=24 or course ="AB";
 
 select * from student order by age;
 select * from student order by age desc limit 2 offset 1;
  select * from student;
delete from student where id=3;
update student set name = null where id =4; 

create table info(id int , name varchar(30) not null,
course varchar(40) not null, city varchar(30) default 'Bhopal',
foreign key(id) references student(id));

 insert into info(id,name,course,city)
 values(2,"Amit","AA","indore"),
 (4,"Aman","BB","indore"),
 (6,"Ajay","BC","indore");
 
 describe info;
 
 alter table info add course_id int auto_increment primary key;
 
 alter table info drop foreign key info_ibfk_1;
 alter table info drop key id;
 
 select * from student;
 
 update student set age = 36 where id =2;
 rollback;
