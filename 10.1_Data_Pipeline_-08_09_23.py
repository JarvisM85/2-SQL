# DATE ==> 08/09/2023

import psycopg2 as pg2

#Create a connection with PostgreSQL
# 'password' is whatever you set,
conn = pg2.connect(database="dvdrental",user="postgres",password="root")


# Establish connection and start cursor to be ready to query
cur = conn.cursor()


# Pass in a PostgreSQL query as a String
cur.execute("SELECT * FROM payment")

# Return a tuple of the first row as Python objects
cur.fetchone()

# Return N number of Rows
cur.fetchmany(10)

# Return ALL rows at rows
cur.fetchall()

# To save and index results, assign it to a variable
data = cur.fetchmany(10)

'''
NOTE => if sometimes the command gives error the after solving that 
        have to execute from 1st because the Connection is Broken.
'''

# Don't forget to Close the connection !
# killing the Kernelor Shutting down jupyter will also close it
conn.close()



'''
########################################################3
'''

import psycopg2 as pg2

conn = pg2.connect(database="testme",user="postgres",password="root")

curr = conn.cursor()

# Execute a command : Create courses Table
curr.execute("""CREATE TABLE courses(
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(50) UNIQUE NOT NULL,
    course_instructor VARCHAR (100) NOT NULL,
    topic VARCHAR(20) NOT NULL );
    """)

# Make the changes to the Database Persistent
conn.commit()

# Close cursor and Communication with the Database
cur.close()





