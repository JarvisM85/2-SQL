select * from hello;
select firstname,lastname from hello;

-- using * always is not a good practice ,it increases network Traffic
-- on the contrary give table names insted

select * from customer;
select email from customer where store_id=2;

select count(customer_id) from customer;
--1.
select first_name, last_name, email from customer;

--2. Distinct -> to return only distinct values in the table
--Syntax => Select DISTINCT(column_name) FROM table_name
select distinct first_name from customer;

-----------------------------------------------------------------
--3.
select * from film;
select distinct release_year from film;

select distinct rental_rate from film;

select count(title) from film where rental_rate=0.99;

select count(distinct rating) from film;
select distinct rating from film;


select count(title) from film;

--------------------------------------------------------------
select * from payment;
select count(*) from payment;
select count(amount) from payment;
select amount from payment;
select distinct amount from payment;
select count(distinct amount) from payment;

select * from payment where amount=2.99

select payment_id,amount from payment where NOT amount=5.99

select payment_id, amount from payment where amount=5.99 and staff_id=2

select * from film where rental_rate > 4;