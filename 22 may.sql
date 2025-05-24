use dummy;


select c.customernumber,c.customername ,o.status from customers as c inner join orders as o 
on c.customernumber = o.customernumber;


select * from customers c left join orders o on c.customernumber = o.customernumber;


select * from customers c left join orders o on c.customernumber = o.customernumber where ordernumber is null;

select * from customers c left join orders o on c.customernumber = o.customernumber where  country="USA";

select * from customers;
select * from customers c inner join orders o on c.customernumber = o.customernumber 
where orderdate between "2003-01-01" and "2003-05-01";


