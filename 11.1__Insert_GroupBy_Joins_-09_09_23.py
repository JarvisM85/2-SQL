#DATE ==> 09/09/2023


import psycopg2 as pg2

#Create a connection
conn = pg2.connect(database="testme",user="postgres",password="root")

cur = conn.cursor()

cur.execute("INSERT INTO courses(course_name,course_instructor,topic)VALUES('Introduction to SQL','Ram','Julia')");

cur.execute("INSERT INTO courses(course_name,course_instructor,topic)VALUES('Analyzing Survey Data in Python','Sham','Python')");

cur.execute("INSERT INTO courses(course_name,course_instructor,topic)VALUES('Introduction to ChatGPT','Ganesh','Theory')");

cur.execute("INSERT INTO courses(course_name,course_instructor,topic)VALUES('Introduction to Statistics in R','Ramesh','R')");

cur.execute("INSERT INTO courses(course_name,course_instructor,topic)VALUES('Hypothesis Testing in Python','Jayesh','Python')");

# After commit values will be seen in PGAdmin
conn.commit()

cur.close()

conn.close()

#Go to PGAdmin

'''
#################################################################
'''
import psycopg2 as pg2

conn = pg2.connect(database="testme",user="postgres",password="root")

# Establish a connection and Start Cursor to be READY to Query.
cur = conn.cursor()

cur.execute('SELECT * FROM courses;')
rows = cur.fetchall()
conn.commit()
conn.close()
for row in rows:
    print(row)
  


'''
###########################################
############################################
'''
import psycopg2 as pg2

conn = pg2.connect(database='testme',user='postgres',password='root')

cur = conn.cursor()

cur.execute('SELECT course_instructor, COUNT(*) FROM courses GROUP BY course_instructor')

conn.commit()
rows = cur.fetchall()
for row in rows:
    print(row)


'''
###########################################
############################################
'''
import psycopg2 as pg2

conn = pg2.connect(database='testme',user='postgres',password='root')

cur = conn.cursor()

cur.execute('SELECT * FROM courses ORDER BY course_instructor')

conn.commit()
rows = cur.fetchall()
for row in rows:
    print(row)

'''
###########################################
############################################
'''



import psycopg2 as pg2

conn = pg2.connect(database="testme",user="postgres",password="root")

cur = conn.cursor()

# Execute a command : Create courses Table
cur.execute("""CREATE TABLE course_admin(
    course_id SERIAL PRIMARY KEY,
    course_duration VARCHAR(50) NOT NULL,
    course_fees VARCHAR (100) NOT NULL);
    """)
conn.commit()


cur.execute("INSERT INTO course_admin(course_duration,course_fees)VALUES('35days','3000'),('50days','5000'),('45days','4500'),('90days','7000'),('61days','6500')");
conn.commit()

cur.execute("""SELECT * FROM courses INNER JOIN course_admin ON courses.course_id=course_admin.course_id;""")
cur.fetchall()


cur.close()
conn.close()



