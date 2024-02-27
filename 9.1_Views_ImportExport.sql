/*
--    VIEWS  =>
  -------------
*/

SELECT * FROM customer;
SELECT * FROM address;

SELECT first_name , last_name ,address FROM customer
INNER JOIN address
ON customer.address_id = address.address_id ;

CREATE VIEW customer_info AS 
SELECT first_name,last_name,address FROM customer
INNER JOIN address
ON customer.address_id = address.address_id ;

SELECT * FROM customer_info;

----

CREATE OR REPLACE VIEW customer_info AS
SELECT first_name,last_name,address,district FROM customer
INNER JOIN address
ON customer.address_id = address.address_id ;

SELECT * FROM customer_info;

-----
-- TO DROP VIEW =>
-- DROP VIEW IF EXIST customer_info

--RENAME 
ALTER VIEW customer_info RENAME TO c_info;
SELECT * FROM c_info;

--DROP
DROP VIEW c_info;


/*
     IMPORTING AND EXPORTING DATA ==>
	---------------------------------
*/

