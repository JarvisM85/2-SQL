select * from payment;

--Q1. find the count of all mondays when the payment is done

select count(*) from payment where extract (dow from payment_date)=1

---------------------------------------

SELECT * FROM film;


SELECT rental_rate+replacement_cost AS addition from film;
SELECT rental_rate-replacement_cost AS subtraction from film;
SELECT rental_rate*replacement_cost AS multiply from film;
SELECT rental_rate/replacement_cost AS division from film;
SELECT rental_rate%replacement_cost AS division from film;
SELECT rental_rate^replacement_cost AS division from film;
SELECT rental_rate^2 AS division from film;
Select |/rental_rate from film;
Select ||/rental_rate from film;

Select factorial(10) ;

Select @rental_rate from film;

---------
SELECT round(rental_rate/replacement_cost,2) from film;
SELECT round(rental_rate/replacement_cost,4)*100 from film;
SELECT round(rental_rate/replacement_cost,4)*100 AS percent_cost from film;
SELECT 0.1*replacement_cost AS deposits from film;


--------------------------------------------
select * from customer;

SELECT LENGTH(first_name) from customer;
SELECT first_name || last_name from customer;

SELECT  first_name || ' ' || last_name AS full_name from customer;
SELECT  upper(first_name) || ' ' || upper(last_name) AS full_name from customer;
SELECT  LEFT(first_name,1) || last_name || '@gmail.com' From customer;
SELECT  LOWER(LEFT(first_name,1)) || LOWER(last_name) || '@gmail.com' AS custom_email from customer;

-----------------------------------------------

--|-- SUBQUERY ==|>
--**********----
SELECT * FROM film;
SELECT AVG(rental_rate) from film;

SELECT title,rental_rate FROM film
WHERE rental_rate > (SELECT AVG(rental_rate) from film);

--------
SELECT * FROM inventory;

SELECT * FROM rental Where return_date
Between '2005-05-29' AND '2005-05-30';
--
select inventory.film_id from rental INNER JOIN inventory
ON inventory.inventory_id = rental.inventory_id
where return_date Between '2005-05-29' AND '2005-05-30';


SELECT film_id from inventory where inventory_id in
(select inventory_id from rental where 
return_date Between '2005-05-29' and '2005-05-30');

----
SELECT film_id,title from film where film_id in
(select inventory.film_id from rental inner join inventory
ON inventory.inventory_id = rental.inventory_id
where return_date Between '2005-05-29' and '2005-05-30');



