use dummy;
select * from customers;

select * from customers where country="USA" or country="france";


create database new_join;
use new_join;
create table info1(id int);
create table info2(id int);
show tables;

insert into info1(id) values(1),(1),(2),(3),(3),(4),(null);
insert into info2(id) values(1),(1),(1),(2),(2),(null),(null),(null);

select * from info1 left join info2 on info1.id = info2.id;

select * from info1 right join info2 on info1.id = info2.id;

select * from info1 cross join info2;
describe info1;

select * from info1 inner join info2 on info1.id = info2.id;

#natural join
#exlusive
#aliasi

use dummy;
select * from customers;
select * from orders;


select * from customers inner join orders on customers.customernumber = orders.customernumber;


# common col error 1052  ambigious
select customers.customernumber,customers.customername,customers.city,orders.status 
from customers inner join orders on customers.customernumber = orders.customernumber;



#aliasi   using "as" is not neccesary but we can
select c.customernumber,c.customername,c.city,o.status from customers as c inner join orders as o
on c.customernumber = o.customernumber;


