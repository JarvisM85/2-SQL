--Date=> 28/08/2023

select * from film
where rental_rate > 4 and replacement_cost >= 19.99;

select * from film
where rental_rate > 4 and replacement_cost >= 19.99 AND rating='R';
-------

select title from film where rental_rate>4 And replacement_cost >=19.99
and rating='R';

----
select count(title) from film where rental_rate>4 And replacement_cost >=19.99
and rating='R';
    
select count(*) from film where rental_rate>4 And replacement_cost >=19.99
and rating='R';
    
--------------------------------
select count(*) from film 
where rating ='R' or rating='PG-13';

select * from film 
where rating != 'R'

select * from film 
where rating <> 'R'

-------
select * from address;

--Q1.
select email from customer where first_name='Nancy' and last_name='Thomas';

--Q2.
SELECT description FROM film WHERE title='Outlaw Hanky';

--Q3.
select * from address;

SELECT phone FROM address WHERE address = '259 Ipoh Drive';

--Q4. Ascending and Descending

SELECT * from customer
order by first_name ;

SELECT * from customer
order by first_name DESC;

SELECT * from customer
order by store_id ASC;

SELECT store_id,first_name,last_name from customer
order by store_id,first_name;

SELECT store_id,first_name,last_name from customer
order by store_id DESC,first_name ASC;

--Q5. LIMIT Command
select * from payment
order by payment_date DESC
LIMIT 5;

select * from payment
where amount != 0.00
order by payment_date DESC
LIMIT 5;

--Q6.
select customer_id from payment 
order by payment_date ASC
Limit 10;

--Q7.
select title,length from film
order by length ASC
limit 5;

--Q8.
select count(title) from film
where length <= 50;

--Q9. BETWEEN
Select * from payment 
where amount between 8 and 9;

select count(*) from payment 
where amount between 8 and 9;

select count(*) from payment 
where amount NOT between 8 and 9;

select * from payment 
where payment_date Between '2007-02-01' and '2007-02-15';



--IN operator
select * from payment
where amount in (0.99,1.98,1.99);

select count(*) from payment
where amount in (0.99,1.98,1.99)

select * from payment
where amount not in (0.99,1.98,1.99)


select count(*) from payment
where amount not in (0.99,1.98,1.99)

select * from customer
where first_name in ('John','Jake','Julie')

select * from customer
where first_name not in ('John','Jake','Julie')

-- LIKE operator (%string%)
select title from film where title like '%law%'

-- https://www.postgresql.org/docs/12/functions-matching.html

select * from customer where first_name like 'J%'

select count(*) from customer where first_name like 'J%'

select * from customer 
where first_name like 'J%' and last_name like 'S%'

select * from customer 
where first_name ilike 'J%' and last_name like 'S%'

select * from customer where first_name like '_her%'

select * from customer where first_name like 'A%'

select * from customer where first_name like 'A%' order by last_name

select * from customer where first_name like 'A%' and last_name not like 'B%'


--Challenge
select count(amount) from payment where amount >5.00

--Challenge
select first_name from actor where first_name like 'P%'
select count(first_name) from actor where first_name like 'P%'





