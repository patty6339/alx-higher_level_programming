This repo is for the project 0x0F. Python - Object-relational mapping

## Resources
Read or watch:

Object-relational mappers
mysqlclient/MySQLdb documentation (please don’t pay attention to _mysql)
MySQLdb tutorial
SQLAlchemy tutorial
SQLAlchemy
mysqlclient/MySQLdb
Introduction to SQLAlchemy
Flask SQLAlchemy
10 common stumbling blocks for SQLAlchemy newbies
Python SQLAlchemy Cheatsheet
SQLAlchemy ORM Tutorial for Python Developers (Warning: This tutorial is with PostgreSQL, but the concept of SQLAlchemy is the same with MySQL)
SQLAlchemy Tutorial
Python Virtual Environments: A primer

Questions

### Why Python Programming is Awesome
Python is awesome because it is simple and easy to learn, has a clean and readable syntax, and supports multiple programming paradigms (procedural, object-oriented, and functional). It has a vast standard library, an active community, and a rich ecosystem of third-party packages for virtually any application, from web development to data science and machine learning.

### How to Connect to a MySQL Database from a Python Script
To connect to a MySQL database from a Python script, you can use the `mysql-connector-python` library. Here's a basic example:
```python
import mysql.connector

# Establish connection
conn = mysql.connector.connect(
    host='localhost',
    user='yourusername',
    password='yourpassword',
    database='yourdatabase'
)

# Create a cursor object
cursor = conn.cursor()

# Close connection
conn.close()
```

### How to SELECT Rows in a MySQL Table from a Python Script
To select rows from a MySQL table:
```python
import mysql.connector

conn = mysql.connector.connect(
    host='localhost',
    user='yourusername',
    password='yourpassword',
    database='yourdatabase'
)

cursor = conn.cursor()

# Execute SELECT query
cursor.execute("SELECT * FROM yourtable")

# Fetch all rows
rows = cursor.fetchall()

for row in rows:
    print(row)

# Close cursor and connection
cursor.close()
conn.close()
```

### How to INSERT Rows in a MySQL Table from a Python Script
To insert rows into a MySQL table:
```python
import mysql.connector

conn = mysql.connector.connect(
    host='localhost',
    user='yourusername',
    password='yourpassword',
    database='yourdatabase'
)

cursor = conn.cursor()

# Execute INSERT query
insert_query = "INSERT INTO yourtable (column1, column2) VALUES (%s, %s)"
data = ('value1', 'value2')
cursor.execute(insert_query, data)

# Commit changes
conn.commit()

# Close cursor and connection
cursor.close()
conn.close()
```

### What ORM Means
ORM stands for Object-Relational Mapping. It is a programming technique used to convert data between incompatible type systems in object-oriented programming languages. ORMs allow developers to interact with a database using high-level, abstracted operations rather than raw SQL queries, by mapping database tables to Python classes.

### How to Map a Python Class to a MySQL Table
You can use an ORM like SQLAlchemy to map a Python class to a MySQL table. Here's a basic example:
```python
from sqlalchemy import create_engine, Column, Integer, String
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

# Create engine
engine = create_engine('mysql+mysqlconnector://user:password@localhost/yourdatabase')

# Base class
Base = declarative_base()

# Define mapped class
class User(Base):
    __tablename__ = 'users'
    id = Column(Integer, primary_key=True)
    name = Column(String(50))
    email = Column(String(50))

# Create all tables
Base.metadata.create_all(engine)

# Create session
Session = sessionmaker(bind=engine)
session = Session()

# Insert a new record
new_user = User(name='John Doe', email='john.doe@example.com')
session.add(new_user)
session.commit()

# Query the database
for user in session.query(User).all():
    print(user.name, user.email)

# Close session
session.close()
```

### How to Create a Python Virtual Environment
To create a Python virtual environment:
1. Ensure you have `virtualenv` installed. If not, install it using `pip install virtualenv`.
2. Navigate to your project directory.
3. Create a virtual environment by running:
   ```bash
   python -m venv myenv
   ```
4. Activate the virtual environment:
   - On Windows:
     ```bash
     myenv\Scripts\activate
     ```
   - On macOS and Linux:
     ```bash
     source myenv/bin/activate
     ```

   To deactivate the virtual environment, simply run `deactivate`.