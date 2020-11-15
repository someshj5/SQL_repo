use coffee_store;

select products.id,products.name,orders.order_time from orders inner join products on orders.product_id = products.id;

-- query on productid=5 in order and products table using inner join and where clause ordered_by order_time
select p.id,p.name,p.price,o.order_time from orders o inner join products p on o.product_id=p.id where o.product_id=6 order by o.order_time;

select c.id,c.first_name,o.order_time from orders o inner join customers c on o.customer_id = c.id where c.id=1 order by order_time;
 
 select * from customers;
 select * from orders;
 update orders set customer_id=1 where id=1;
 
 select * from customers c left join orders o on c.id=o.customer_id order by c.id; 
 select o.id,c.first_name,o.order_time from customers c right join orders o on c.id=o.customer_id order by o.order_time;  
 select c.id as customer_id, p.name as coffee,p.price,c.last_name as customer_name,o.order_time as ordered_at from products p join orders o on p.id = o.product_id join customers c on c.id=o.customer_id
 where c.last_name='Martin' order by o.order_time;
 
 select p.id,o.id, c.phone_number from products p join orders o on  o.product_id = p.id join customers c on c.id=o.customer_id where p.id=4 order by o.order_time;
 select p.name,o.order_time from products p join orders o on p.id = o.product_id where o.order_time between '2017-01-15'and '2017-02-14' order by o.order_time;
 
 select p.name,p.price,o.order_time,c.gender from products p 
 join orders o on p.id=o.product_id 
 join customers c on o.customer_id =c.id 
 where c.gender='F' 
 and o.order_time between '2017-01-01'and '2017-01-31';
 
 SELECT p.name, p.price, o.order_time FROM products p
JOIN orders o ON p.id = o.product_id
JOIN customers c ON o.customer_id = c.id
WHERE c.gender = ‘F’
AND o.order_time BETWEEN ‘2017-01-01’ AND ‘2017-01-31’;
