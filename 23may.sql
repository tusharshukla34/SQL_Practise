use dummy;
show tables;

select * from customers;
select * from orders;
select country from customers where country<> "USA" group by country
order by country limit 1 offset 1;

#write  to find cus how have place an order and there ordercount must me greater then 3

select count(orderNumber) as total_order, customername from customers c inner join orders o on c.customerNumber = o.customerNumber 
group by customername having total_order > 3; 