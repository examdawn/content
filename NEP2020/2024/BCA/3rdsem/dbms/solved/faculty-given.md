# Database Management Systems 
# Important Questions and Topics
# Unit 1:
## Q1. Database architecture
A DBMS (Database Management System) architecture refers to the overall design and organization of a DBMS, including the components, interfaces, and interactions between them. It provides a framework for managing and accessing data in a database.

[Javatpoint](https://www.javatpoint.com/dbms-architecture)

## Q2. Database Schema and Models

Database schema:
- The Skeleton of the database is created by the attributes and this skeleton is named Schema.
- Schema mentions the logical constraints like table, primary key, etc.
- The schema does not represent the data type of the attributes.

[GeeksForGeeks](https://www.geeksforgeeks.org/database-schemas/)

![Database schema Example](https://media.geeksforgeeks.org/wp-content/uploads/20230511011217/schema1drawio.png)

A Data Model in Database Management System (DBMS)  is the concept of tools that are developed to summarize the description of the database. Data Models provide us with a transparent picture of data which helps us in creating an actual database. It shows us from the design of the data to its proper implementation of data.

[GeeksForGeeks](https://www.geeksforgeeks.org/data-models-in-dbms/)
## Q3. Data Independence
Data independence is a property of a database management system by which we can change the database schema at one level of the database system without changing the database schema at the next higher level. 

It has two types:
- Physical Data Independence 
- Logical Data Independence

**Logical Data Independence**:
- Refers to the capacity to change the logical schema without altering the external schema or application programs.
- Changes may include adding new fields or tables.
- Allows users to interact with data without needing to modify their applications when the logical structure changes.

**Physical Data Independence**:
- Refers to the ability to change the physical schema without affecting the logical schema.
- Changes may involve altering storage devices, file formats, or indexing methods.
- Ensures that the logical structure remains stable even if the physical storage changes.

***Summary***:
- **Logical Independence**: Changes in the logical structure don't affect user applications.
- **Physical Independence**: Changes in physical storage don't affect the logical structure.

[GeeksForGeeks](https://www.geeksforgeeks.org/what-is-data-independence-in-dbms/)

## Q4. Database Languages
Database languages are special-purpose languages that help with tasks like data definition, manipulation, and control: 

- ***Data Definition Language (DDL)***: Used to define data types, create tables, and define relationships between them. DDL commands include CREATE, ALTER, DROP, TRUNCATE, and RENAME. 
- ***Data Manipulation Language (DML)***: Used to perform tasks like inserting, updating, or deleting data. DML commands include INSERT and UPDATE. 
- ***Data Control Language (DCL)***: Used to control access to data. DCL commands include GRANT and REVOKE. 
- ***Data Query Language (DQL)***: Used to search for information and compute derived information. 
Transaction Control Language (TCL): Used to run the changes made by the DML statement. TCL commands include COMMIT. 

![Types of DB Languages](https://files.codingninjas.in/article_images/database-languages-0-1650484671.webp)

[Naukri](https://www.naukri.com/code360/library/database-languages-in-dbms)
## Q5. Classification of DBMS
Types of DBMS
- ***Relational Database Management System (RDBMS)***: Data is organized into tables (relations) with rows and columns, and the relationships between the data are managed through primary and foreign keys. 
    - SQL (Structured Query Language) is used to query and manipulate the data.
- ***NoSQL DBMS***: Designed for high-performance scenarios and large-scale data
    - NoSQL databases store data in various non-relational formats such as key-value pairs, documents, graphs, or columns.
- ***Object-Oriented DBMS (OODBMS)***: Stores data as objects, similar to those used in object-oriented programming
    - It allows for complex data representations and relationships

[GeeksForGeeks](https://www.geeksforgeeks.org/introduction-of-dbms-database-management-system-set-1/)


# Unit 2:
## Q1. Construct a ER diagram for Company database,Student database,Employee salary database.

TODO: Solve
## Q2. Define Entity, Relationship and types of cardinality
An Entity is a real-world object, person, place or thing that we are representing in the database. 
- Eg. A car exists in the real world, and we can represent it in our database
- We can store data about such entities

A relationship in DBMS refers to the logical association between different entities that are stored in separate tables.
- Eg. Customers, products, and orders

Types of Cardinality:
- ***One To One Relationship***
    - Consider two entities "Person" and "Aadhar card". Each person can have only one Aadhar card and each Aadhar card is assigned to only one person.
    -  ![One To One Relationship](https://media.geeksforgeeks.org/wp-content/uploads/20240607225720/pha.png)
- ***One-to-Many or Many-to-One Relationship***
    - Consider two entities "customer" and "order". Each customer can place multiple orders but each order is placed by only one customer.
    - ![One To N Relationship](https://media.geeksforgeeks.org/wp-content/uploads/20240607225819/cpo.png)
- ***Many-to-Many Relationship***
    - Consider two entities "Student" and "Course" where each student can enroll in multiple courses and each course can have multiple students enrolled in it. 
    - This relationship is mainly implemented using junction table. 
    - ![N to N Relationship](https://media.geeksforgeeks.org/wp-content/uploads/20240607225932/sec.png)
[GeeksForGeeks](https://www.geeksforgeeks.org/what-is-relationship-type-in-dbms/)
## Q3. Explain ER notations used in database Schema design.
ER Notations are used to represent various components of the ER Model, using different symbols.

![ER Notations](https://binaryterms.com/wp-content/uploads/2021/10/Entity-Relationship-Diagram-Symbols.jpg)


- Rectangles illustrate the entity set.
    - A Strong Entity Set only has a single border.
        - It is defined by its own set of attributes
    - A Weak Entity Set has two borders 
        - It is always associated with another Entity Set(which is called the Identifier Entity Set)
- Diamond illustrates the relationship between the entity set.
    - A Strong Relationship has a single border
        - Here, the Child Entity is completely dependent on the Parent Entity.
    - A Weak Relationship has two borders
        - A weak Relationship is where a child Entity can exist without the Parent Entity.
- Ellipse illustrates the attributes of an entity set.
    - A simple Attribute has a single outer border
        - It cannot be further divided into sub-parts. Example, *id* attribute
        - It is also known as a Single-Valued Attribute
    - A Multi-Valued Attribute has 2 outer borders
        - This means it has more than one value for a given entity.
            - Eg. *phone_number* may have multiple numbers stored
    - A Composite Attribute has subparts derived from it.
        - It can be broken down into subparts. Example, *name* can be broken down into *first_name* and *last_name* 
    - A Derived Attribute has a dotted border
        - It means the data in this attribute was derived from another attribute
            - For Example, *age* was Derived from *date_of_birth*
- Lines illustrate the association of attributes to the entity set and the association of entity set to the relationship set.

[BinaryTerms](https://binaryterms.com/entity-relationship-diagram.html)
## Q4. What is an attribute? What are the types of attributes.
[Already Answered in Q3](#q3-explain-er-notations-used-in-database-schema-design)
## Q5. What is a relationship? Give an example of all types of relationships.
A Relationship in a Database refers to a connection between properties of tables. 
- It is a logical association between different entities stored in seperate tables
- Eg. Customers, Products, and Orders are linked to each other using relations
TODO: Finish

# Unit 3:
## Q1. What is a Domain, Attribute and Tuple?
Domain:
- In a database, a domain is a column that contains a data type. Data types can be built-in (such as integers or strings) or custom types that define constraints on the data themselves.
- Example:
    - In a table, a domain is a set of values that can be used to attribute an attribute. The domain of a month can accept January, February, etc. 
    - A domain of integers can accept whole numbers that are negative, positive, and zero.

Attribute:
- Any real-world object is considered to be an entity that has self-existence
    - These entities in DBMS have their own characteristics and properties known as attributes.  - Attributes give us additional information about entities and help us to study their relationship within the specified system.

Tuple:
- A Tuple in a DBMS is just a row having inter-related data about a particular entity(it can be any object).
    - Tuples are mostly seen in Relational Databases Management Systems(RDBMS) as RDBMS works on the relational model (Tabular format).
    - In DBMS, we call rows “Tuples” and a row “Tuple”.


[Gaurav Tiwari(Medium)](https://medium.com/@gauravtiwari20162/explain-1-domain-2-tuple-3-attributes-4-degree-5-cardinality-of-relation-cf31d94f1d5b)
## Q2. Explain Relational Model constraints: Domain Constraints, Referential Constraints,Integrity constraints, Null constraints.

TODO: Solve

## Q3. Explain operators in Relational algebra? Specifically Unary, Projection, binary 
Relational algebra is a procedural query language, which takes instances of relations as input and yields instances of relations as output. It uses operators to perform queries. 

An operator can be either unary or binary. They accept relations as their input and yield relations as their output. 

Types:
- **Unary**
    - The operations that operate on only one relation are called unary operations in relational algebra. The three unary operations in relational algebra are:
        - ***Selection***
            - The selection operation is a unary operation that is performed on one relation. 
            - The selection operation is used to retrieve tuples from the relation that satisfies the given condition. 
            - It is denoted by σ (sigma) 
        - ***Projection***
            -  Project operation selects (or chooses) certain attributes discarding other attributes.
            - The Project operation is also known as vertical partitioning since it partitions the relation or table vertically discarding other columns or attributes.
            - It is denoted by π (pi)
        - ***Rename***
            - The rename operation is operation applied on one relation. 
            - Rename operation (as the name suggests) is used to rename the relation, attributes or both. 
            - It is denoted by ρ (rho)
- ***Binary***
    - The operations that operate on two relations are called binary operations in relational algebra. The three binary operations in relational algebra are:
        - ***Union***
            - It performs binary union between two given relations
            - It is denoted by ∪ (union)
        - ***Set Difference***
            - The result of set difference operation is tuples, which are present in one relation but are not in the second relation.
            - It is denoted by − (Minus Symbol) 
        - ***Cartesian Product***
            - Combines information of two different relations into one. 
            - It is denoted by X (Multiplication X) 

- [GeeksForGeeks(Unary)](https://www.geeksforgeeks.org/what-are-the-unary-operations-in-relational-algebra/?ref=asr10)
- [TutorialsPoint](https://www.tutorialspoint.com/dbms/relational_algebra.htm) 

## Q4. What is join operation? Explain its types with an example.
SQL JOIN clause is used to query and access data from multiple tables by establishing logical relationships between them. 
- It can access data from multiple tables simultaneously using common key values shared across different tables. 

I will explain the types with various examples.
Consider two tables: `employees` and `departments`.

**employees**

| id  | name    | dept_id |
| --- | ------- | ------- |
| 1   | Alice   | 1       |
| 2   | Bob     | 2       |
| 3   | Charlie | NULL    |
| 4   | David   | 1       |

**departments**

| id  | dept_name     |
| --- | ------------- |
| 1   | HR            |
| 2   | IT            |
| 3   | Marketing     |

1. **Natural Join (⨝)**: This join automatically matches columns with the same name and data type in both tables. You don't need to specify any condition. In this example, it would automatically join on the `dept_id` column, as it's present in both tables.

Notation:
R ⨝ S 


Example:
```MySQL
SELECT employees.name, departments.dept_name FROM employees NATURAL JOIN departments;
```

Result:

| id  | name    | dept_name |
| --- | ------- | --------- |
| 1   | Alice   | HR        |
| 2   | Bob     | IT        |
| 4   | David   | HR        |

2. **Left Join (Left Outer Join)**  (⟕): This join returns all rows from the left table (employees), and the matching rows from the right table (departments). If there’s no match, `NULL` is returned for columns from the right table.

Notation:
R ⟕ S

Example:
```MySQL
SELECT employees.name, departments.dept_name FROM employees LEFT JOIN departments ON employees.dept_id = departments.id;
```

Result:

| name    | dept_name |
| ------- | --------- |
| Alice   | HR        |
| Bob     | IT        |
| Charlie | NULL      |
| David   | HR        |

3. **Right Join (Right Outer Join)** (⟖): This join returns all rows from the right table (departments), and the matching rows from the left table (employees). If there’s no match, `NULL` is returned for columns from the left table.

Notation:
R  ⟖ S

Example:
```MySQL
SELECT employees.name, departments.dept_name FROM employees RIGHT JOIN departments ON employees.dept_id = departments.id;
```

Result:

| name    | dept_name |
| ------- | --------- |
| Alice   | HR        |
| Bob     | IT        |
| NULL    | Marketing |

4. **Full Join (Full Outer Join)** (⟗): This join returns all rows when there is a match in either the left or right table. If there’s no match, `NULL` is returned for the unmatched rows.

Notation:
R ⟗ S

MySQL does not directly support full outer join, but you can achieve it using a combination of left join and right join with a `UNION`.

Example:
```MySQL
SELECT employees.name, departments.dept_name FROM employees LEFT JOIN departments ON employees.dept_id = departments.id 
UNION 
SELECT employees.name, departments.dept_name FROM employees RIGHT JOIN departments ON employees.dept_id = departments.id;
```

Result:

| name    | dept_name |
| ------- | --------- |
| Alice   | HR        |
| Bob     | IT        |
| Charlie | NULL      |
| David   | HR        |
| NULL    | Marketing |

5. **Inner Join**: This join returns rows that have matching values in both tables.  

Example: 
```MySQL
SELECT employees.name, departments.dept_name FROM employees INNER JOIN departments ON employees.dept_id = departments.id;
```

Result:

| name    | dept_name |
| ------- | --------- |
| Alice   | HR        |
| Bob     | IT        |
| David   | HR        |

## Q5. Explain nested Queries with example
Nested queries are a way to perform complex queries by embedding one query within another. The outer query can apply some conditions on the results of the inner query. Let us use Students, Grades tables for understanding nested queries.

Input:
Students table
| StudentID | StudentName | Age | Major         |
|-----------|-------------|-----|---------------|
| 1         | Alice       | 20  | Mathematics   |
| 2         | Bob         | 21  | Computer Sci  |
| 3         | Charlie     | 22  | Mathematics   |
| 4         | David       | 19  | Physics       |

Grades table:
| StudentID | Subject      | Score |
|-----------|--------------|-------|
| 1         | Mathematics  | 95    |
| 1         | Physics      | 88    |
| 2         | Computer Sci | 85    |
| 3         | Mathematics  | 92    |
| 4         | Physics      | 78    |

```SQL
SELECT StudentName
FROM Students
WHERE StudentID IN (
    SELECT StudentID
    FROM Grades
    WHERE Subject = ‘Mathematics’ AND Score > 90
);```

Output:
| StudentName |
|-------------|
| Alice       |
| Charlie     |

[GeeksForGeeks](https://www.geeksforgeeks.org/nested-queries-in-sql/)
## Q6. Describe the PL/SQL block
PL/SQL Queries are more or less blocks of code.
- Declare Block
    - Declare section starts with DECLARE keyword in which variables, constants, records as cursors can be declared which stores data temporarily. 
    - It basically consists definition of PL/SQL identifiers. 
    - This part of the code is optional.
- Begin Block
    - Execution section starts with BEGIN and ends with END keyword.
    - Here, the program logic is written to perform any task like loops and conditional statements. 
    - This is a mandatory section.
- Exception Block
    - Exception section starts with EXCEPTION keyword
    - Any exceptions can be handled in this section 
    - It contains statements that are executed when a run-time error occurs.
    - This section is optional 
- End
    - Indicates the end of the PL/SQL Begin Block.
    - This is a mandatory section
- Seperator(;)
    - Marks the End of the PL/SQL query sequence
    - Helps seperate one PL/SQL sequence from another one

Syntax:
```PL/SQL
DECLARE
    declaration statements;

BEGIN
    executable statements;

EXCEPTIONS
    exception handling statements;

END;
```

[(GeeksForGeeks)](https://www.geeksforgeeks.org/plsql-introduction/)
## Q7. Features of PL/SQL
Features of PL/SQL:
- PL/SQL is basically a procedural language
    - It provides the functionality of decision-making, iteration, and many more features of procedural programming languages.
- PL/SQL can execute a number of queries in one block using single command.
- One can create a PL/SQL unit such as procedures, functions, packages, triggers, and types
    - They are stored in the database for reuse by applications.
- PL/SQL provides a feature to handle the exception which occurs in PL/SQL block known as exception handling block.
- Applications written in PL/SQL are portable to computer hardware or operating system where Oracle is operational.
    PL/SQL Offers extensive error checking.

[GeeksForGeeks](https://www.geeksforgeeks.org/plsql-introduction/)
## Q8. What is cursor and its types
The cursor is used to retrieve data one row at a time from the results set, unlike other SQL commands that operate on all rows at once.
- Cursors update table records in a singleton or row-by-row manner.


Cursors are classified depending on how they are opened:
- ***Implicit Cursor***: If the Oracle engine opened a cursor for its internal processing it is known as an Implicit Cursor. 
    - It is created “automatically” for the user by Oracle when a query is executed and is simpler to code.
- ***Explicit Cursor***: A Cursor can also be opened for processing data through a PL/SQL block, on demand. 
    - A user-defined cursor is known as an Explicit Cursor.
    - Syntax for creating a Cursor
        - `CURSOR cursor_name IS select_statement;`


## Q9. Explain exception with an example?
An exception is an error which disrupts the normal flow of program instructions. PL/SQL provides us the exception block which raises the exception thus helping the programmer to find out the fault and resolve it.

There are two types of exceptions defined in PL/SQL:
- **User defined exception**.
- **System defined exceptions**.

[GeeksForGeeks](https://www.geeksforgeeks.org/exception-handling-plsql/) TODO: Finish
# Unit 4:
## Q1. Anomalies in relational Database design
Anomalies in the relational model refer to inconsistencies or errors that can arise when working with relational databases, specifically in the context of data insertion, deletion, and modification.
- Database anomalies are the faults in the database caused due to poor management of storing everything in the flat database. 
- It can be removed with the process of **Normalization**, which generally splits the database which results in reducing the anomalies in the database.

These anomalies can be categorized into three types:
- **Insertion Anomalies**
- **Deletion Anomalies**
- **Update Anomalies**.

[GeeksForGeeks](https://www.geeksforgeeks.org/anomalies-in-relational-model/)
## Q2. Decomposition 
When we divide a table into multiple tables or divide a relation into multiple relations, then this process is called Decomposition. 
- We perform decomposition in DBMS when we want to process a particular data set. 
- It is performed in a database management system when we need to ensure consistency and remove anomalies and duplicate data present in the database. 
    - When we perform decomposition in DBMS, we must try to ensure that no information or data is lost.

There are two types of Decomposition:
- **Lossless Decomposition**
    - We can regain the original relation R with the help of joins from the multiple relations formed after decomposition
        - While regaining the original relation, no information should be lost.
        - If we perform join operation on the sub-divided relations, we must get the original relation.
- **Lossy Decomposition**
    - When we perform join operation on the sub-relations, it doesn't result to the same relation which was decomposed

![Decomposition in DBMS](https://media.geeksforgeeks.org/wp-content/uploads/20240225103236/Screenshot-2024-02-25-103224.png)

[GeeksForGeeks](https://www.geeksforgeeks.org/decomposition-in-dbms/)
## Q3. Functional Dependencies
In relational database management, functional dependency is a concept that specifies the relationship between two sets of attributes where one attribute determines the value of another attribute. 
- It is denoted as X → Y
    - The attribute set on the left side of the arrow, X is called Determinant, and Y is called the Dependent.
    - Basically, the value of Y depends on the Value of X

There are Two Types of Functional Dependencies:
- ***Trivial functional dependency***
    - In Trivial Functional Dependency, a dependent is always a subset of the determinant. 
    - i.e. If X → Y and Y is the subset of X, then it is called trivial functional dependency
- ***Non-Trivial functional dependency***
    - In Non-trivial functional dependency, the dependent is strictly not a subset of the determinant. 
    - i.e. If X → Y and Y is not a subset of X, then it is called Non-trivial functional dependency.

[GeeksForGeeks](https://www.geeksforgeeks.org/types-of-functional-dependencies-in-dbms/)
## Q4. 1st normal Form, 2nd normal Form, 3rd normal form, BCNF
Normalization is the process of minimizing redundancy from a relation or set of relations. 
- Redundancy in relation may cause insertion, deletion, and update anomalies. 
    - So, it helps to minimize the redundancy in relations. 
    - Normal forms are used to eliminate or reduce redundancy in database tables. 
- What normalization basically does is ensure that your data is free of data redundancy or duplicate data and does not have data anomalies that would otherwise compromise its integrity.

Levels of Normalization:
- ***First Normal Form*** (1NF)
- ***Second Normal Form*** (2NF)
- ***Third Normal Form*** (3NF)
- ***Boyce-Codd Normal Form*** (BCNF)

Explanation:
- First Normal Form (1NF):
    - This is the most basic level of normalization. 
    - In 1NF, each table cell should contain only a single value, and each column should have a unique name. The first normal form helps to eliminate duplicate data and simplify queries.
- Second Normal Form (2NF):
    - 2NF eliminates redundant data by requiring that each non-key attribute be dependent on the primary key. 
    - This means that each column should be directly related to the primary key, and not to other columns.
- Third Normal Form (3NF):
    - 3NF builds on 2NF by requiring that all non-key attributes are independent of each other. 
    - This means that each column should be directly related to the primary key, and not to any other columns in the same table.
- Boyce-Codd Normal Form (BCNF):
    - BCNF is a stricter form of 3NF that ensures that each determinant in a table is a candidate key. 
    - In other words, BCNF ensures that each non-key attribute is dependent only on the candidate key.

[(GeeksForGeeks, Explanation)](https://www.geeksforgeeks.org/normal-forms-in-dbms/)
[(GeeksForGeeks, Forms)](https://www.geeksforgeeks.org/normal-forms-in-dbms/)

# Unit 5:
## Q1. Transaction states
TODO: Solve
## Q2.  Transaction operations
TODO: Solve
## Q3. Properties of Transaction
TODO: Solve
## Q4. Concurrency control problem
TODO: Solve
## Q5. concurrency control techniques
TODO: Solve

