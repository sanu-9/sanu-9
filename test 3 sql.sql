select * from sales;
select  extract(year from order_date) as years, to_char(order_date, 'Mon')as months,
sum(sales) as total_sales
from sales group by 1,2
order by 3;

select * from customer;

select distinct customer_id from customer;

select customer_id , segment, count(state)  
from customer 
where segment in ('California', 'Texas') 
group by customer_id
order by customer_id asc;

select *,
max(sales) over(partition by ship_mode order by sales desc) as highest_sales 
from sales;

select * from customer;
select upper(customer_name)from customer;
select substring(customer_name,1,4) as name from customer;
select INSTR(customer_name, 's') from customer where customer_name='Steve';
select LTRIM (customer_name) from customer;
select distinct city, length(city) from customer;
select replace(customer_name,'a', 'A') from customer;
select concat(country, ' ,', city,', ', state) from customer;
select * from customer order by customer_name asc, state desc;
select * from customer where region not in('West', 'East');
select * from  customer where state like 'Texas%';
select * from  customer where postal_code like '%7';
select * from customer where customer_name like '%a%';
select * from customer where customer_name like '';
select count(*) from customer group by   segment = 'Consumer';
select segment, count(*) from customer group by   segment ;
select region, count(customer_id) as id from customer group by region
order by id desc;

select * from sales;
select * from customer as c 
inner join
sales as s
on c.customer_id = s.customer_id
where s.ship_mode = 'Second Class';


										   
										   
									