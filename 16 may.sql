use dummy;
show tables;
describe db12;
select * from customers;


select * from customers where creditlimit > 50000;
select * from customers where country = "USA";


# for numerical data
select * from customers where creditlimit > 50000 order by creditlimit;


# for categorical data
select * from customers where country  = "usa" order by customername asc;




# wild card like operator
select * from customers where customername like "a";
select * from customers where customername like "%a";
select * from customers where customername like "a%";
select * from customers where customername like "_t";



#limit and offset

select * from customers order by creditlimit desc limit 1;
select * from customers order by creditlimit desc limit 2 offset 4;




