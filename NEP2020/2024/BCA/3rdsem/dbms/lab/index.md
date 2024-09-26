# Lab Practicals

Tested on 10.6.18-MariaDB-0ubuntu0.22.04.1 except Question 4 which will be written with MySQL 8.0.37 in mind

Upto Question 5, output is given so students are not stuck staring at a brick wall of CLI

## Program 1: Execute Single line Query and Group Functions.
###	Create a table INVENTORY with the following attributes(Item_No,Item_Name,Price).
```MySQL
CREATE TABLE inventory(item_no varchar(10) PRIMARY KEY, item_name varchar(20), price decimal(10,2));
```

- ✅ MySQL returned an empty result set (i.e. zero rows). (Query took 0.0015 seconds.)
###	Insert five tuples in the table INVENTORY. 
(Doing only 2, same concept)

```MySQL
INSERT INTO inventory VALUES('L101', 'Laptop', 50000);
```

- ✅  1 row inserted. (Query took 0.0003 seconds.)


``` MySQL
INSERT INTO inventory VALUES('L102', 'Computer', 100000);
```

- ✅ 1 row inserted. (Query took 0.0002 seconds.)

###	Display all the tuples from the INVENTORY Table.
```MySQL
SELECT * FROM inventory;
```

- ✅ Showing rows 0 - 1 (2 total, Query took 0.0002 seconds.)

###	Perform single line query operations using group functions.
```MySQL
SELECT COUNT(*) number_of_items from inventory;
```

| number_of_items |
|-----------------|
| 2               |

- ✅ Your SQL query has been executed successfully.


```MySQL
SELECT MAX(price) maximum_price FROM inventory;
```

| maximum_price |
|---------------|
| 100000.00     |

- ✅ Showing rows 0 - 0 (1 total, Query took 0.0002 seconds.)


```MySQL
SELECT MIN(price) minimum_price FROM inventory;
```
| minimum_price |
|---------------|
| 50000.00      |

- ✅ Showing rows 0 - 0 (1 total, Query took 0.0002 seconds.)

```MySQL
SELECT AVG(price) avg_amount FROM inventory;
```
| avg_amount    |
|---------------|
| 75000.000000  |

- ✅ Showing rows 0 - 0 (1 total, Query took 0.0001 seconds.)

```MySQL
SELECT SUM(price) total_amount FROM inventory;
```

| total_amount  |
|---------------|
| 150000.00     |

- ✅ Showing rows 0 - 0 (1 total, Query took 0.0001 seconds.)

## Program 2: Execute DDL Commands.
### Create table STUDENT with the following attributes(Register_no, Name, Mark_1,Mark_2,Mark_3).


```MySQL
CREATE TABLE student(register_no varchar(10) PRIMARY KEY, name varchar(20), mark_1 int, mark_2 int, mark_3 int);
```

- ✅ MySQL returned an empty result set (i.e. zero rows). (Query took 0.0003 seconds.)

```MySQL
DESC student;
```
- ✅ Your SQL query has been executed successfully.


| Field       | Type        | Null | Key | Default | Extra |
|-------------|-------------|------|-----|---------|-------|
| register_no | varchar(10) | NO   | PRI | NULL    |       |
| name        | varchar(20) | YES  |     | NULL    |       |
| mark_1      | int(11)     | YES  |     | NULL    |       |
| mark_2      | int(11)     | YES  |     | NULL    |       |
| mark_3      | int(11)     | YES  |     | NULL    |       |



### Add new columns(Total, Average) to the table STUDENT.
```MySQL
ALTER TABLE student add(total int, average decimal(7,2));
```
- ✅ MySQL returned an empty result set (i.e. zero rows). (Query took 0.0003 seconds.)


```MySQL
desc student;
```
Your SQL query has been executed successfully.

| Field       | Type         | Null | Key | Default | Extra |
|-------------|--------------|------|-----|---------|-------|
| register_no | varchar(10)  | NO   | PRI | NULL    |       |
| name        | varchar(20)  | YES  |     | NULL    |       |
| mark_1      | int(11)      | YES  |     | NULL    |       |
| mark_2      | int(11)      | YES  |     | NULL    |       |
| mark_3      | int(11)      | YES  |     | NULL    |       |
| total       | int(11)      | YES  |     | NULL    |       |
| average     | decimal(7,2) | YES  |     | NULL    |       |


### Rename the table STUDENT to  STUDENT_T1.
```MySQL
RENAME TABLE student to student_t1;
```

- ✅ MySQL returned an empty result set (i.e. zero rows). (Query took 0.0004 seconds.)

### Truncate the table STUDENT_T1.
```MySQL
TRUNCATE TABLE student_t1;
```

- ✅ MySQL returned an empty result set (i.e. zero rows). (Query took 0.0003 seconds.)

### Drop the table STUDENT_T1.
```MySQL
DROP TABLE student_t1;
```

- ✅ MySQL returned an empty result set (i.e. zero rows). (Query took 0.0003 seconds.)

## Program 3: Execute DML Commands.
### Create table STUDENT with the following attributes(Register_No, Name, Mark_1, Mark_2, Mark_3,Total,Average).

```MySQL
CREATE TABLE student002(register_no varchar(10) PRIMARY KEY, name varchar(20), mark_1 int, mark_2 int, mark_3 int, total int, average decimal(7,2));
```

- ✅ MySQL returned an empty result set (i.e. zero rows). (Query took 0.0004 seconds.)



```MySQL
DESC student002;
```

- ✅ Your SQL query has been executed successfully.

| Field       | Type         | Null | Key | Default | Extra |
|-------------|--------------|------|-----|---------|-------|
| register_no | varchar(10)  | NO   | PRI | NULL    |       |
| name        | varchar(20)  | YES  |     | NULL    |       |
| mark_1      | int(11)      | YES  |     | NULL    |       |
| mark_2      | int(11)      | YES  |     | NULL    |       |
| mark_3      | int(11)      | YES  |     | NULL    |       |
| total       | int(11)      | YES  |     | NULL    |       |
| average     | decimal(7,2) | YES  |     | NULL    |       |


### Insert five tuples in the table STUDENT.(Make sure average and total fields are NULL).
(Doing only 2, same concept)
```MySQL
INSERT INTO student002 VALUES('S101', 'charles', 99, 100, 95, null, null);
```
- ✅ 1 row inserted. (Query took 0.0008 seconds.)


```MySQL
INSERT INTO student002 VALUES('S102', 'abdul', 100, 99, 100, null, null);
```

- ✅ 1 row inserted. (Query took 0.0001 seconds.)


### Display all the tuples from the table STUDENT.
```MySQL
SELECT * FROM student002;
```

- ✅ Showing rows 0 - 1 (2 total, Query took 0.0002 seconds.)

| register_no | name    | mark_1 | mark_2 | mark_3 | total | average |
|-------------|---------|--------|--------|--------|-------|---------|
| S101        | charles | 99     | 100    | 95     | NULL  | NULL    |
| S102        | abdul   | 100    | 99     | 100    | NULL  | NULL    |


### Find the Total and AVERAGE AND UPDATE TO THE TABLE student.
- Total=(Mark_1 + Mark_2 + Mark_3)
- Average=(Mark_1+Mark_2+Mark_3)/3.

```MySQL
UPDATE student002 SET total=(mark_1+mark_2+mark_3),average=(mark_1+mark_2+mark_3)/3;
```

- ✅ 2 rows affected. (Query took 0.0003 seconds.)


```MySQL
SELECT * FROM student002;
```

- ✅ Showing rows 0 - 0 (1 total, Query took 0.0002 seconds.)

| register_no | name   | mark_1 | mark_2 | mark_3 | total | average |
|-------------|--------|--------|--------|--------|-------|---------|
| S101        | charles|   99   |   100  |    95  |   294 |    98.00|
| S102        | abdul  |   100  |    99  |   100  |   299 |    99.67|

### Delete a tuple from the table STUDENT.
```MySQL
DELETE FROM student002 WHERE register_no='S101';
```

- ✅ 1 row deleted. (Query took 0.0003 seconds.)

```MySQL
SELECT * FROM student002;
```
- ✅ Showing rows 0 - 0 (1 total, Query took 0.0002 seconds.)

| register_no | name   | mark_1 | mark_2 | mark_3 | total | average |
|-------------|--------|--------|--------|--------|-------|---------|
| S102        | abdul  |   100  |    99  |   100  |   299 |    99.67|

## Program 4: Execute DCL and TCL Commands.
### Connect the database using the command line window.
```MySQL
USE souhrud_practical;
```
- ✅ MySQL returned an empty result set (i.e. zero rows). (Query took 0.0001 seconds.)

### Create a table PURCHASE with the following attributes (Item_No, Item_Name,Price).

```MySQL
CREATE TABLE purchase(item_no varchar(4), item_name varchar(20), price decimal(10,2));
```
- ✅ MySQL returned an empty result set (i.e. zero rows). (Query took 0.0085 seconds.)


### Insert two tuples in the PURCHASE.

```MySQL
INSERT INTO purchase VALUES("L101", "laptop", 50000);
```

- ✅ 1 row inserted. (Query took 0.0011 seconds.)

```MySQL
INSERT INTO purchase VALUES("L102", "desktop", 100000);
```

- ✅ 1 row inserted. (Query took 0.0011 seconds.)

### Create a user with (User name: customer,Password:sales).

TODO: later
MariaDB is managed by HestiaCP so I don't want to give perms since it is a security risk. I've requested @jack-pots to help out with this

### Perform DCL command operations using the table PURCHASE.
### Perform TCL command operations using the table PURCHASE.

## Program 5: Implement the Nested Queries.
### Create a table TEACHER with the following attributes(Tid,Tanme,Deptid).

```MySQL
CREATE TABLE teacher(tid int(4) PRIMARY KEY, tname varchar(20), deptid varchar(3));
```

### Insert two tuples in the table TEACHER.
```MySQL
INSERT INTO teacher VALUES(1001, 'charles', 'D11');
```

```MySQL
INSERT INTO teacher VALUES(1002, 'abdul', 'D12');
```

Now, output it
```MySQL
select * from teacher;
```

### Create a table DEPARTMENT with the following attributes(Deptid,Dname).

```MySQL
CREATE TABLE department(deptid varchar(10), dname varchar(20));
```

Check the attributes
```MySQL
DESC department;
```

### Insert three tuples into the DEPARTMENT Table.

```MySQL
INSERT INTO department VALUES('D11','computer science'),('D15','physics'),('D13', 'maths');
```
Now, check the output:
```MySQL
SELECT * FROM department;
```

### Perform nested queries using the table TEACHER and DEPARTMENT.

```MySQL
SELECT * FROM teacher WHERE deptid IN(SELECT deptid FROM department WHERE teacher.deptid=department.deptid);
```

## Program 6: Implement Join Operations in SQL.
### Create a table EMPLOYEE with the following attributes(Emp_id, Emp_name,Edept_id).
```MySQL
CREATE TABLE employee(emp_id int PRIMARY KEY, emp_name varchar(20), edept_id int);
```
### Insert three tuples in the table EMPLOYEE.
```MySQL
INSERT INTO employee VALUES(1001, 'charles', 10), (1002, 'abdul', 30), (1003, 'rohan', 30);
```
### Create a table DEPARTMENT with the following attributes(Dept_id,Dept_name).
```MySQL
CREATE TABLE department(dept_id int PRIMARY KEY, dept_name varchar(20));
```
### Enter Four tuples in the table DEPARTMENT.
```MySQL
INSERT INTO department VALUES(10, 'accounts'), (20, 'design'), (40, 'testing'), (50, 'purchase');
```
### Perform join Operations using the table EMPLOYEE and DEPARTMENT.
Inner Join:
```MySQL
SELECT emp_id, emp_name, edept_id, dept_name FROM employee INNER JOIN department ON employee.edept_id=department.dept_id;
```

Left Outer Join: 
```MySQL
SELECT emp_id, emp_name, edept_id, dept_name FROM employee LEFT JOIN department ON employee.edept_id=department.dept_id;
```

Right Outer Join:
```MySQL
SELECT emp_id, emp_name, edept_id, dept_name FROM employee RIGHT JOIN department ON employee.edept_id=department.dept_id;
```
Full Join: 
```MySQL
SELECT emp_id, emp_name, edept_id, dept_name FROM employee LEFT JOIN department ON employee.edept_id=department.dept_id UNION SELECT emp_id, emp_name, edept_id, dept_name FROM employee RIGHT JOIN department ON employee.edept_id=department.dept_id;
```

## Program 7: Create a view for a particular table.
### Create a table TRAIN (Train_no,Train_Nmae,Source,Destination).
```MySQL
CREATE TABLE train(train_no int PRIMARY KEY, train_name varchar(20), source varchar(20), destination varchar(20)); 
```
### Insert three tuples in the table TRAIN.
```MySQL
INSERT INTO train VALUES (50001, 'malgudi exp', 'bengaluru', 'mysuru'), (50002,'karnataka exp','bengaluru','new delhi'), (50003,'shatabdi exp','bengaluru','chennai'); 
```
### Display all the tuples from the table TRAIN.
```MySQL
SELECT * FROM train; 
```
### Perform view operations using the table TRAIN.
```MySQL
CREATE VIEW display_view AS SELECT * FROM train; 
```
Display Train View
```MySQL
 SELECT * FROM display_view;
```
```MySQL
INSERT INTO display_view VALUES(50004,'kochuveli exp', NULL, NULL); 
```
Display Train View after Operation
```MySQL
SELECT * FROM display_view; 
```
Add data to 50004 train
```MySQL
UPDATE train set source='bengaluru', destination='kochuveli' WHERE train_no=50004; 
```
Output the result
```MySQL
SELECT * FROM display_view;
``` 
## Program 8: Implement Locks for a particular table.
### Connect the database using the command line window.
### Create table CAR with the following attributes(Model_No, Brand,Price).
### Insert five tuples in the table CAR.
### Create a user with (User name: Owner, Password:car) and grant the select, update permission.
### Implement the Locks using the table CAR.

## Program 9: Write PL/SQL Procedure for an application using exception handling.
### Create a table BANK with the following attributes(Acno, Name,Balance).
### Insert five tuples in the table BANK.
### Display all the tables from the table BANK.
### Perform exception handling using the table BANK.

## Program 10: Write PL/SQL procedure for an application using a cursor.
### Create a table BANK with the following attributes(Acno, Name,Balance).
### Insert five tuples in the table BANK.
### Display all the tuples from the table BANK.
### Display all the tuples from the table BANK using cursor.

## Program 11: Write a PL/SQL procedure for an application using functions.
### Create a table LAPTOP with the following attributes(Model_No,Company_Name, Price).
### Insert five tuples in the table LAPTOP.
### Display all the tuples in the table LAPTOP.
### Find the maximum price in the table LAPTOP using the function.

## Program 12: Write a PL/SQL procedure for an application using a package.
### Create a table LIBRARY with the following attributes(Book_id, Book_name, B_price).
### Insert three tuples in the table LIBRARY.
### Display all the tuples from the table LIBRARY.
### Create a package using the table LIBRARY.

## Source:
- General Questions were found in Syllabus
- Specific Questions are from a documents shared in the whatsapp group.