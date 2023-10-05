# Database and Table Creation & Data Manipulation

This guide is part of an interactive workshop aimed at introducing the fundamentals of SQL and databases. In this section, we'll cover how to create a database, create a table, and perform basic data manipulation tasks.

## Table of Contents

1. [Creating a Database](#creating-a-database)
2. [Creating a Table](#creating-a-table)
3. [Data Manipulation](#data-manipulation)

---

## Creating a Database

Before you can create tables and store data, you need to create a database. Here's how to do it:

### Step 1: Open MySQL Console

Open your MySQL console by running the following command:

```bash
sudo mysql -u root -p
```

### Step 2: Create a Database

To create a new database, run the following SQL command:

```sql
CREATE DATABASE workshop;
```

### Step 3: Use the Database

To start using the newly created database, run:

```sql
USE workshop;
```

---

## Creating a Table

Now that we have a database, let's create a table to store some data.

### Step 1: Define Table Schema

Decide the structure of your table. For this example, we'll create a table named `student` with the following columns:

- `id` (integer, primary key)
- `first_name` (string)
- `last_name` (string)
- `age` (integer)

### Step 2: Create the Table

Run the following SQL command to create the table:

```sql
CREATE TABLE student (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT
);
```

---

## Data Manipulation

Let's go over some basic data manipulation tasks: inserting, reading, updating, and deleting records.

### Inserting Data

To insert a new record into the `student` table, run:

```sql
INSERT INTO student (first_name, last_name, age) VALUES ('John', 'Doe', 21);
```

### Reading Data

To read data from the table, use the `SELECT` statement:

```sql
SELECT * FROM student;
```

### Updating Data

To update an existing record, use the `UPDATE` statement. For example, to update the age of John Doe:

```sql
UPDATE student SET age = 22 WHERE first_name = 'John' AND last_name = 'Doe';
```

### Deleting Data

To delete a record, use the `DELETE` statement. For example, to delete John Doe's record:

```sql
DELETE FROM student WHERE first_name = 'John' AND last_name = 'Doe';
```

---

And that's it for this section! You've learned how to create a database and a table, as well as how to perform basic data manipulation tasks.

## Resources

- [SQL Data Types](https://www.w3schools.com/sql/sql_datatypes.asp)
- [SQL Constraints](https://www.w3schools.com/sql/sql_constraints.asp)