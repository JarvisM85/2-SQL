CREATE TABLE simple(
	a INTEGER,
	b INTEGER,
	c INTEGER
)

SELECT * FROM simple ;


-----------------------------------------
--Write a SQL statement to create a simple table countries including,
--columns country_id , country_name and region_id.

CREATE TABLE countries(
	COUNTRY_ID varchar(3),
	COUNTRY_NAME varchar(45),
	REGION_ID decimal(10,0)
);


SELECT * FROM countries;

-------------------------------------
-- Write a SQL statement to create the structure of a table dup_countries (duplicate)
--  similar to the countries.

CREATE TABLE dub_countries AS
(SELECT * FROM countries);
	
SELECT * FROM dub_countries;

----------------------------------------------
-- Write a SQL statement to create a table countries , set a constraint null.
CREATE TABLE IF NOT EXISTS countries(
	COUNTRY_ID varchar(2) NOT NULL,
	COUNTRY_NAME varchar(40) NOT NULL,
	REGION_ID decimal(10,2) NOT NULL
)


--------------------------------------------------------
-- Write a SQL statement to create a table named "jobs" having columns
-- job_id , job_title , mini_salary , max_salary  and 
-- CHECK whether the max_salary amount excedding the upper limit 25000.
CREATE TABLE IF NOT EXISTS jobs(
	job_id varchar(10) NOT NULL,
	job_title varchar(100) NOT NULL,
	min_salary decimal(10,2) NOT NULL,
	max_salary decimal(10,2) NOT NULL CHECK (max_salary > 25000)
);
SELECT * FROM jobs;

-------------------------------------------------------------------------------------------------------
/*
Write a SQL statement to create a table named countries including columns,
country_id , country_name and region_id and make sure that no countries
except Italy, India and China will be entered in the table.
*/

CREATE TABLE IF NOT EXISTS country(
	COUNTRY_ID varchar(2) NOT NULL,
	COUNTRY_NAME varchar(40) NOT NULL CHECK (COUNTRY_NAME IN ('Italy','India','China')),
	REGION_ID decimal(10,2) NOT NULL
)

SELECT * FROM country;

--------------------------------------------------------------------------------
/*
Write a SQL statement to create a table named countries including columns,
country_id , country_name and region_id and make sure that no duplicate data
against column  country_id .
*/
CREATE TABLE IF NOT EXISTS country(
	COUNTRY_ID varchar(2) UNIQUE,
	COUNTRY_NAME varchar(40) NOT NULL CHECK (COUNTRY_NAME IN ('Italy','India','China')),
	REGION_ID decimal(10,2) NOT NULL
)

--------------------------------------------------------------------------------
/*
Write a SQL statement to create a table named jobs including columns,
job_id , job_title , mini_salary , max_salary  and make sure that the default value for
job_title is blank and min_salary is 8000 and max_salary is NULL will be
entered automatically at the time of insertion, if no value assigned for the specified column.
*/
CREATE TABLE IF NOT EXISTS jobs(
	job_id varchar(10) NOT NULL UNIQUE,
	job_title varchar(100) NOT NULL DEFAULT '  ',
	min_salary decimal(10,2) DEFAULT 8000,
	max_salary decimal(10,2)  NULL
);

--------------------------------------------------------------------------------
/*
Write a SQL statement to create a table named countries including columns,
country_id , country_name and region_id and make sure that country_id column will be a key field
which will not contain any duplicate data at the time of insertion.
*/
CREATE TABLE IF NOT EXISTS countries(
	COUNTRY_ID varchar(2) NOT NULL UNIQUE PRIMARY KEY,
	COUNTRY_NAME varchar(40) NOT NULL,
	REGION_ID decimal(10,2) NOT NULL
)

--------------------------------------------------------------------------------
/*
Write a SQL statement to create a table named countries including columns,
country_id , country_name and region_id and make sure that country_id WILL BE unique 
and store an AUTO_INCREMENTED VALUE.(SERIAL)
*/
CREATE TABLE IF NOT EXISTS countries_n(
	COUNTRY_ID SERIAL NOT NULL,
	COUNTRY_NAME varchar(40) NOT NULL,
	REGION_ID decimal(10,2) NOT NULL
);

--------------------------------------------------------------------------------
/*
Write a SQL statement to create a table named countries including columns,
country_id , country_name and region_id and make sure that 
the combimation of country_id and region_id will be UNIQUE.
*/
CREATE TABLE IF NOT EXISTS countries_n(
	COUNTRY_ID varchar(2) NOT NULL UNIQUE DEFAULT ' ',
	COUNTRY_NAME varchar(40) DEFAULT NULL,
	REGION_ID decimal(10,2) NOT NULL,
	PRIMARY KEY (COUNTRY_ID)
);

---------------------------------------------------------------------------
/*
Write a SQL statement to create a table job_history, including columns employee_id, start_date , end_date , 
job_id  and department_id and make sure that, the employee_id column does not contain any duplicate 
value at the time of insertion. And the foreign key column job_id content only those values 
which exist in the job stable.
*/
CREATE TABLE job_history(
	employee_id decimal(6,0) PRIMARY KEY,
	start_date DATE NOT NULL,
	end_date DATE NOT NULL,
	job_id VARCHAR(10) NOT NULL UNIQUE,
	department_id DECIMAL(4,0) DEFAULT NULL,
	FOREIGN KEY (job_id) REFERENCES jobs(job_id)
);



