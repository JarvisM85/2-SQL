--DATE ==> 06/09/2023

/*

      UPDATING TABLE => 
   ---------------------

*/
SELECT * FROM account;

UPDATE account SET
last_login = CURRENT_TIMESTAMP;

---
SELECT * FROM account;
SELECT * FROM job;
SELECT * FROM account_job;

UPDATE account_job
SET hire_date = account.created_on
FROM account
WHERE account_job.user_id=account.user_id

-----
SELECT * FROM  account;

UPDATE account 
SET last_login = created_on
RETURNING last_login;


----
SELECT * FROM account;
SELECT * FROM job;
SELECT * FROM account_job;

UPDATE account_job
SET hire_date = account.created_on
FROM account
WHERE account_job.user_id=account.user_id

---
SELECT * FROM account;

UPDATE account
SET last_login = CURRENT_TIMESTAMP
RETURNING email,created_on,last_login ;

--**************************************************

/*

  --  DELETE ==>
  ----------------

*/
insert into job(job_name)
values ('Cowboy');

SELECT * FROM job;


DELETE from job
where job_name = 'Cowboy'
Returning job_id,job_name;

------
/*

   --  ALTER Clause  =>
   ---------------------
   
*/

CREATE TABLE information(
	info_id SERIAL PRIMARY KEY,
	title VARCHAR(500) NOT NULL,
	person VARCHAR(50) NOT NULL UNIQUE
)

--
-- 1.RENAME TABLE ->
ALTER TABLE information 
RENAME TO new_info;

select * from new_info;
--***
-- 2.RENAME COLUMN ->
ALTER TABLE new_info
RENAME COLUMN person to people;

select * from new_info;

-----------
--ERROR -> becoz AS WE mentioned it as 'not null'  
--      but space in betwn causes null values
INSERT INTO new_info(title)
VALUES('some new title');


INSERT INTO new_info(title)
VALUES('some_new_title');

---
ALTER TABLE new_info
ALTER COLUMN people
DROP NOT NULL;

INSERT INTO new_info(title)
VALUES('some_new_title');

SELECT * from new_info;

---------
/*
  --- ALTER DROP =>
*/

Select * from new_info;

ALTER TABLE new_info
DROP COLUMN people;

Select * from new_info;
-----


ALTER TABLE new_info
DROP COLUMN IF EXISTS people ;

-------------------------------------
--*****************************************
--*******************************************
/*
---  CHECK ==>
--------------------
*/

CREATE TABLE employees(
	emp_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	birthdate DATE CHECK (birthdate > '1900-01-01'),
	hire_date DATE CHECK (hire_date > birthdate),
	salary INTEGER CHECK (salary > 0)
)


INSERT INTO employees(first_name,last_name,birthdate,hire_date,salary)
VALUES ('Jose','Portilla','1992-11-03','2010-01-01',100);

---
SELECT * FROM employees;

---------------------------------------------------------------------
/*
--    CASE ==>
--------------------
*/
--DATABASE=> dvdrental

select * from customer;

SELECT customer_id,
CASE
WHEN (customer_id <= 100) THEN 'Premium'
WHEN (customer_id BETWEEN 100 AND 200) THEN 'Plus'
ELSE 'Normal'
END
FROM customer ;


SELECT customer_id,
CASE
WHEN (customer_id <= 100) THEN 'Premium'
WHEN (customer_id BETWEEN 100 AND 200) THEN 'Plus'
ELSE 'Normal' 
END AS TYPE
FROM customer ;

select customer_id,
case customer_id
	when 2 THEN 'Winner'
	when 5 THEN 'Second Place'
	ELSE 'Normal'
END AS reffle_results

------------------------------
SELECT * FROM film;

SELECT rental_rate FROM film;

SELECT 
CASE rental_rate
WHEN 0.99 THEN 1
ELSE 0
END
FROM film;

SELECT
SUM(CASE rental_rate
   WHEN 0.99 THEN 1
   ELSE 0
END) AS number_of_bargains
FROM film ;


SELECT
SUM(CASE rental_rate
   WHEN 0.99 THEN 1
   ELSE 0
END) AS bargains,
SUM(CASE rental_rate
   WHEN 2.99 THEN 1
   ELSE 0
END) AS regular
FROM film ;


SELECT
SUM(CASE rental_rate
   WHEN 0.99 THEN 1
   ELSE 0
END) AS bargains,
SUM(CASE rental_rate
   WHEN 2.99 THEN 1
   ELSE 0
END) AS regular,
SUM(CASE rental_rate
   WHEN 4.99 THEN 1
   ELSE 0
END) AS premium
FROM film ;




