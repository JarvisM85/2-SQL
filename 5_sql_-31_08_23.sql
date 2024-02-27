--DATE => 31/08/23

-------    AS Clause --->
SELECT * FROM payment;

select amount as price from payment;

----------------------------------------31 August 2023----------------------------------------

-- Use of 'as' clause

select customer_id,sum(amount) 
from payment
group by customer_id

select customer_id,sum(amount) as total_spend
from payment
group by customer_id

select customer_id,sum(amount) 2q
from payment
group by customer_id
having sum(amount)>100

select customer_id,sum(amount) as total_spend
from payment
group by customer_id
having sum(amount)>100

select customer_id,amount as new_name from payment where amount>2

----------------------  JOINS  --------------------------
                      ---------

--syntax:- select * from Table_A
--         inner join Table_B
--         on Table_A.Colm_name=Table_B.Colm_name


select * from 
payment inner join customer on
payment.customer_id = customer.customer_id;

select payment.payment_id,payment.customer_id,customer.first_name
from payment inner join customer ON
payment.customer_id = customer.customer_id

SELECT * FROM
customer  FULL OUTER JOIN payment   ON
customer.customer_id = payment.customer_id
WHERE customer.customer_id is null OR
payment.customer_id is null

---
SELECT * From
payment LEFT OUTER JOIN customer ON
payment.customer_id = customer.customer_id



select film.film_id,title,inventory_id,store_id From
film LEFT JOIN inventory on
inventory.film_id = film.film_id 

------------ 
-- AFTERNOON
------------  
select film.film_id,title,inventory_id,store_id From
film LEFT JOIN inventory on
inventory.film_id = film.film_id 
where inventory.film_id is null


--Right OUTER JOIN
-------------------------------
--Challenge
--Q1.
select district,email from customer Inner JOIN address 
ON customer.address_id= address.address_id 
where district='California';


--Q2.
select title,first_name,last_name FROM actor INNER JOIN film_actor
ON actor.actor_id = film_actor.actor_id 
INNER JOIN film ON
film.film_id = film_actor.film_id
WHERE first_name='Nick' AND last_name='Wahlberg'; 

------------------------------------------------
/*
TIME       ---> only time
DATE       ---> only date
TIMESTAMP  ---> both time & date
TIMESTAMPTZ --> time , date , timezone
*/

select title from film where film_id in
(select film_id from film_actor where actor_id in
(select actor_id from actor where 
first_name='Nick' and last_name='Wahlberg'
order by title))
---------------------------------------------------
---------------------------------------------------

SHOW ALL
SHOW TIMEZONE
SELECT NOW()
SELECT TIMEOFDAY()
SELECT CURRENT_DATE

--EXPLORE extracting information from a time based data type using:
EXTRACT()
AGE()
TO_CHAR()

-------
--EXTRACT()  ::>
-------------
-- Allows you to 'extract' a sub-component of a date value
YEAR
MONTH
DAY
WEEK 
QUARTER

EXTRACT(YEAR FROM date_col)
-----------------------------
-- AGE()  ==> calculates and eturns the current age given a timestamp
AGE(date_col)

-----------------------------------------
-- TO_CHAR() 
/* general function to convert data type to text

*/

SELECT EXTRACT(YEAR FROM payment_date) AS myyear
from payment;





/* extract(): 
	allow you to 'extract' or obtain a sub-component of a date value
	
	-> year
	-> month
	-> day
	-> week
	-> quarter
	
	syntax: -> extract(year from date_col)
	
	age():
		-> calculates and return the current age given a timestamp
		-> usage: 
			-> age(date_col)
		-> returns 
			-> 13 year
			
	to_char():
		-> General function to convert data types to text
		-> usefull for timestamp formatting usage
		-> usage:
		    -> to_char(date_col,'mm-dd-yyyy')
			
*/

select * from payment
select extract(year from payment_date) as myyear from payment

select extract(month from payment_date) as pay_month from payment

select extract(Quarter from payment_date) as pay_month from payment

select * from payment

select age(payment_date) from payment

select to_char(payment_date,'')
from payment

select to_char(payment_date,'MM/DD/YYYY')
from payment

------------------------------------------challenge--------------------------------------------------------
--During which months did payments occur?
-- format your answer to return back.

select distinct(to_char(payment_date,'month')) from payment
