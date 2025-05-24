use dummy;
show tables;
select * from customers;

#to querify the limited data
select customernumber, city , state from customers;


#clause to querify the specific data 
select * from customers where city = "Nantes";

#to querify the multiple set 
select * from customers where country in ("france","usa","australia");

select * from customers where country not in("france","usa","australia");




#to querify the secific result set with specific coloumn
select customernumber,city, state from customers where city = "Nantes";

# to arrange the data in sequential order
select * from customers order by creditLimit desc;
select * from customers order by customernumber asc;

#

describe customers;
desc customers;


select * from customers where creditlimit < 50000;
select * from customers where creditlimit > 50000;



select * from customers;




