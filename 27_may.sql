use dummy;
show tables;

select * from customers;

select * from orders;

select * from orderdetails;
describe ordrerdetails;

select c.customernumber ,c.creditlimit, o.status, od.productcode,od.ordernumber , (quantityordered * priceeach) as toatal_sum
 from customers c inner join orders o on c.customernumber = o.customernumber
 inner join orderdetails od on o.ordernumber = od.ordernumber group by ordernumber;


select o.customernumber ,o.creditlimit, o.status, od.productcode,od.ordernumber , sum(quantityordered * priceeach) as toatal_sum
 from orders o inner join ordersdetails od on o.orderrnumber = od.ordernumber group by ordernumber;


select status ,count(*)
from orders 
group by status; 

select status , sum(quantityordered * priceeach) as total_sum
from orders o inner join orderdetails od on o.ordernumber = od.ordernumber  group by status 
having total_sum > 60000 order by total_sum limit 1;


#Show date hw






select * from customers c inner join orders o on c.customernumber = o.customernumber
inner join payments p on  o.customernumber = p.customernumber where country = "usa";




select * from customers c inner join orders o on c.customernumber = o.customernumber 
inner join payments p on o.customernumber = p.customernumber ;



select  c.customernumber , customername , checknumber , paymentdate from customers c inner join orders o on c.customernumber = o.customernumber
inner join payments p on o.customernumber = p.customernumber where paymentdate > "2005-01-01";


