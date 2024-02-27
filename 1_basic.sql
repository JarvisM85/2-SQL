select * from film;

select film_id from film where title='African Egg'

select title from film where film_id > 25 and film_id<51;

/*  sql is declarative --> 
       SEQUEL 
	   
primary key
seconday key
SQL commands ==>




*/

select * from city;
select * from city where city='Ahmadnagar'

----------------------------------------------

select count(category_id) from film_category;

select max(amount) from payment;

select * from rental;
select max(rental_id) from rental;

select first_name,last_name from actor

-- single line comment
/* multi 
    line 
	comment
	*/
	
--Comon Select Mistakes=>
select fullName as "fullname"
select select fullName as "fullName" From "Users";


--Filtering DAta
select name from users where id=10;
select * from payment
select payment_id from payment where staff_id=1
select count(payment_id) from payment where staff_id=1

select * from address where district='QLD'



select address from address where address_id between 0 and 3

