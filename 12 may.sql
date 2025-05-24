use db1;
show tables;
select * from dept;


update dept2 set dept_name = "Data" where dept_id=1;
set sql_safe_updates = 0;

#createing a dublicate table as previous one
create table dept2 as select * from dept;

select * from dept2;

delete from dept2 where dept_id=2;





#delete table permanently
drop table dept2;



#to delete the inner struture
truncate table dept2;

#it help the rollback the data
delete from dept2 where id=2;



#to change the datatype of a column
alter table dept2 modify dept_name varchar(60);








create table db12(id int auto_increment primary key,
name varchar(30) not null, age int not null, 
phone int unique not null, 
city varchar(30) not null default "Bhopal");

insert into db12(id,name,age,phone,city)
values(1,"AA",25,1234,"Indore");


select * from db12;

insert into db12(name,age,phone)
values("CA",20,5124),("DA",35,8124),("EA",45,1824),("FA",75,1894);




#is
#is not
#and
#between 
#not between

#sql bolt
#sql_practice
#code-chef


