--DATE == 05/09/2023

/*

          CREATING TABLES ==>
		---------------------


*/


CREATE TABLE account(
	user_id SERIAL PRIMARY KEY,
	username VARCHAR(50) UNIQUE NOT NULL,
	password VARCHAR(50) NOT NULL,
	email VARCHAR(250) UNIQUE NOT NULL,
	created_on TIMESTAMP NOT NULL,
	last_login TIMESTAMP
)


-----------------

CREATE TABLE job(
	job_id SERIAL PRIMARY KEY,
	job_name VARCHAR(200) UNIQUE NOT NULL
)

------------------------------
CREATE TABLE account_job(
	USER_id INTEGER REFERENCES account(user_id),
	job_id INTEGER REFERENCES job(job_id),
	hire_date TIMESTAMP

)

----------------------------------------------------------------

/*

          INSERTING VALUES  ==>
		---------------------
		 
*/

INSERT INTO account(username,password,email,created_on)
VALUES
('Ram','root','ram1@sanjivani.org.in',CURRENT_TIMESTAMP)


INSERT INTO account(username,password,email,created_on)
VALUES
('Sham','root1','sham@sanjivani.org.in',CURRENT_TIMESTAMP)

select * from account;
-------
INSERT INTO job(job_name)
VALUES ('Data Scientist');

select * from job;

----
INSERT INTO account_job(job_id,user_id,hire_date)
VALUES
(1,1,CURRENT_TIMESTAMP)

select * from account_job;