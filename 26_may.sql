use dummy;
show tables;

select * from customers;
select * from payments;
select * from orders;

select * from customers c inner join orders o on c.customernumber = o.customernumber
inner join payments p on  o.customernumber = p.customernumber where country = "usa";




select * from customers c inner join orders o on c.customernumber = o.customernumber 
inner join payments p on o.customernumber = p.customernumber ;