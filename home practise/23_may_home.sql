use dummy;
show tables;

select * from customers;
select * from orders;

select * from customers c inner join orders o on c.customernumber = o.customernumber;
select count(ordernumber) as total_count, customername from customers c inner join orders o
on  c.customernumber = o.customernumber group by customername having total_count > 3;



#group by kaam krta non aggregrate coloumn ke sath hai pr group by ka istamal aggregrate column pr hota hai

select count(c.customernumber) as total_cus, country from customers c left join orders o on 
c.customernumber = o.customernumber group by coustomernumber;