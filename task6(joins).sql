select * from sales

select * from customer

select * from product


select order_id, ship_mode, customer_id, quantity, discount from sales 

select customer_id, customer_name, age from customer
	
 --inner join
select c.customer_id, c.customer_name, c.age,
s.order_id, s.ship_mode, s.product_id, s.quantity, s.discount from customer as c 
inner join sales as s
on s.customer_id = c.customer_id  limit 15

   --left join 
select c.customer_id, c.customer_name, c.age,
s.order_id, s.ship_mode, s.product_id, s.quantity, s.discount from sales as s
left join customer as c
on c.customer_id = s.customer_id 

 -- right join
select c.customer_id, c.customer_name, c.age,
s.order_id, s.ship_mode, s.product_id, s.quantity, s.discount from sales as s
right join customer as c
on c.customer_id = s.customer_id  

  --full join
select c.customer_id, c.customer_name, c.age,
s.order_id, s.ship_mode, s.product_id, s.quantity, s.discount from sales as s
full join customer as c
on c.customer_id = s.customer_id 


--product and sales 
select * from product

select * from sales

select s.order_id, s.order_date, s.ship_mode, s.sales, s.profit, s.product_id,
p.category, p.sub_category, p.product_name from product as p
left join sales as s
on s.product_id = p.product_id


select s.order_id, s.order_date, s.ship_mode, s.sales, s.profit, s.product_id,
p.category, p.sub_category, p.product_name from sales as s
right join product as p
on  p.product_id = s.product_id 


select s.order_id, s.order_date, s.ship_mode, s.sales, s.profit, s.product_id,
p.category, p.sub_category, p.product_name from sales as s
full join product as p
on  p.product_id = s.product_id 



	--join 3 tables 
select c.customer_id, c.customer_name, c.age,
s.order_id, s.ship_mode, s.product_id, s.quantity,
p.product_name	from customer as c 
join sales as s
on s.customer_id = c.customer_id
join product as p
on p.product_id = s.product_id


