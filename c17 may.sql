use dummy;
select * from customers;

select * from customers where country="USA" or country="france";


create database new_join;
use new_join;
create table info1(id int);
create table info2(id int);

insert into info1(id) values(1),(1),(2),(3),(3),(4),(null);
insert into info2(id) values(1),(1),(1),(2),(2),(null),(null),(null);

select * from info1 left join info2 on 
info1.id = info2.id;


select * from info1 cross join info2;

