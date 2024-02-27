/* DATE => 29/08/2023  */

--Q1.
select * from address;

select count(distinct district) from address;


--Q2.
select distinct district from address;


--Q3.
SELECT count(*) FROM film 
Where rating='R' AND replacement_cost between '5' and '15' ;

--Q4.
SELECT COUNT(*) FROM film WHERE title LIKE '%Truman%';


---------------------------------------------------------

-- GROUP BY ===>
/*
https://www.postgresql.org/docs/current/function-aggregate.html
*/
--------------------------------------------------
/*
-- AGGREGATE function

AVG() - --> returns a floating point value
	can use ROUND() for precision after decimal
	
COUNT()---> returns the no. of rows


MAX()
MIN()
SUM()


*/

select MAX (replacement_cost),MIN(replacement_cost)
from film;

select ROUND(AVG(replacement_cost),5)
from film;

----
SELECT * FROM film;

SELECT MIN(replacement_cost) FROM film;

SELECT MAX(replacement_cost) FROM film;

SELECT AVG(replacement_cost) FROM film;

SELECT Round(AVG(replacement_cost),4) FROM film;

SELECT SUM(replacement_cost) FROM film;


--GROUP BY allows us to Categories columns

SELECT * FROM payment;

SELECT customer_id  FROM payment
GROUP BY customer_id
ORDER BY customer_id;


SELECT customer_id,SUM(amount)  FROM payment
GROUP BY customer_id;

SELECT customer_id,SUM(amount)  FROM payment
GROUP BY customer_id
ORDER BY SUM(amount);


SELECT customer_id,SUM(amount)  FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC;

-----
SELECT * FROM payment;

SELECT customer_id,staff_id,SUM(amount) from payment
GROUP BY staff_id,customer_id
ORDER BY customer_id;

SELECT DATE(payment_date),SUM(amount) from payment
GROUP BY DATE(payment_date);


SELECT DATE(payment_date),SUM(amount) from payment
GROUP BY DATE(payment_date)
ORDER BY SUM(amount) DESC

--Challenge
--Q1.


----------------------------------------GROUP BY--------------------------------------------

--syntax : select category_col, agg(data_col) from table group by category_col

select * from film
select rating,sum(replacement_cost) from film group by rating

select * from payment

select customer_id from payment group by customer_id order by customer_id

select customer_id,avg(amount) from payment
where customer_id in ('4','5')       --- 'where' should not be preferred
group by customer_id order by customer_id

select customer_id,avg(amount) from payment
group by customer_id order by customer_id
limit 10

select customer_id,sum(amount) from payment
group by customer_id order by sum(amount) desc

select customer_id,staff_id,sum(amount) from payment group by customer_id,staff_id
order by customer_id desc

select date(payment_date), sum (amount) from payment group by date(payment_date)
order by date desc

--Challenge
select * from payment
select staff_id,count(amount) from payment group by staff_id

--Challenge
select * from film
select rating,round(avg(replacement_cost),4) from film group by rating

--Challenge
select * from payment
select customer_id,sum(amount) from payment group by customer_id order by sum(amount) desc
limit 5


------------------------------------------HAVING-------------------------------------------

--Ex: select company,sum(sales) from finance_table group by company having sum(sales)>1000

-- 'having' should be used after group by
-- 'where' should be used before group by

select customer_id,sum(amount) from payment where customer_id not in (184,87,477) 
group by customer_id

select customer_id ,sum(amount) from payment group by customer_id having sum(amount)>100

select store_id ,count(customer_id) from customer group by store_id

select store_id ,count(*) from customer group by store_id having count(*) >300

select store_id ,count(customer_id) from customer group by store_id having count(*) >300


--Challenge
select customer_id,count(amount) from payment group by customer_id having count(amount) >=40

--Challenge
select * from payment
select customer_id,sum(amount) from payment where staff_id=2 group by customer_id 
having sum(amount)>=100

--1)Challenge
select customer_id,sum(amount) from payment where staff_id=2 group by customer_id
having sum(amount)>=110

--2)Challenge
select count(*) from film where title like 'J%'

--3)Challenge
select first_name,last_name from customer where first_name like 'E%' 
group by customer_id
having address_id<500
order by customer_id desc
limit 1
