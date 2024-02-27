Create Table students(
	student_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	homeroom_number INTEGER,
	phone VARCHAR(10) UNIQUE,
	email VARCHAR(36) UNIQUE,
	graduation_year INTEGER
)


CREATE TABLE teacher(
	teacher_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	homeroom_number INTEGER,
	department VARCHAR(50),
	email VARCHAR(36) UNIQUE,
	phone VARCHAR(10) UNIQUE
)

-----
select * from students;
select * from teacher;

------------------------------------
INSERT INTO students 
VALUES (1,'Rahul','Galande',5,'7775551234','Rahul.galande@gmail.com',2023)

INSERT INTO teacher
VALUES (1,'Chandrashekhar','Gogte',5,'Biology','Chandrashekhar.gogte@gmail.com ','7775554321')

----------------------
SELECT * FROM students;
SELECT * FROM teacher;
-------------
UPDATE students SET


/*


*/

--*************************************************************************
