--Q1. 👍
CREATE TABLE IF NOT EXISTS jobs(
	job_id varchar(10) NOT NULL,
	job_title varchar(100) NOT NULL,
	min_salary decimal(10,2) NOT NULL,
	max_salary decimal(10,2) NOT NULL CHECK (max_salary > 25000)
);

SELECT * FROM jobs;


--Q2.👍
Select  * from jobs_new;

ALTER TABLE jobs_new ADD COLUMN email varchar(36) DEFAULT 'Not Available';




--Q3.👍
ALTER TABLE jobs RENAME to jobs_new;

--Q4.👍
Alter table jobs_new add column dept_id VARCHAR(10);

--Q5.👍
INSERT INTO jobs_new values (1,'Manager',200000,300000,'1001');
INSERT INTO jobs_new values (2,'Employee',40000,80000,'1002');
INSERT INTO jobs_new values (3,'Cleark',26000,30000,'1003');

Select  * from jobs_new;



--Q6.
select job_id,dept_id from jobs_new;



--Q7.👍
Select job_title,max_salary from jobs_new where max_salary in(select max(max_salary) from jobs_new);

--Q8.
select avg(max_salary),count(job_id) from jobs_new;



--Q9.👍
Create a table manager_details comprises of manager_id,manager_name ,dept_id and
Write a query to make a join with two tables jobs_new and manager_details

CREATE TABLE manager_details (
	manager_id Varchar(10) Not null,
	manager_name varchar(50) not null,
	dept_id varchar(10)
);

Insert into manager_details values ('1','Ganesh_Kumar','1001');

select * from jobs_new INNER JOIN manager_details 
on jobs_new.dept_id = manager_details.dept_id ;


--Q10.
select * from jobs_new
select job_id from jobs_new 
where dept_id=(select dept_id from jobs_new where dept_id = 2)