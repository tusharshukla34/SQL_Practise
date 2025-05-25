use dummy;


select * from customers c inner join orders o
on c.customernumber = o.customernumber;
select * from orders;
select * from customers c left join orders o on c.customernumber = o.customernumber 
where orderdate = "2003-01-29";

select * from customers c left join orders o 
on c.customernumber = o.customernumber where ordernumber is null or postalcode = 70563;




