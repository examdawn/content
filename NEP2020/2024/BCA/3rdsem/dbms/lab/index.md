# Lab Practicals

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


## Source:
- General Questions were found in Syllabus
- Specific Questions are from a documents shared in the whatsapp group.