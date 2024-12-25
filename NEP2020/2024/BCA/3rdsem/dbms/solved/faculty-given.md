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

## Q4. What is join operator? Explain its types with an example.
## Q5. Explain nested Queries with example
## Q6. Describe the PL/SQL block
## Q7. Features of PL/SQL
## Q8. What is cursor and its types
## Q9. Explain exception with an example?


# Unit 4:
## Q1. Anamolies in relational Database design
## Q2. Decomposition 
## Q3. Functional Dependencies
## Q4. 1st normal Form
## Q5. 2nd normal Form
## Q6.  3rd normal form
## Q7. BCNF


# Unit 5:
## Q1. Transaction states
## Q2.  Transaction operations
## Q3. Properties of Transaction
## Q4. Concurrency control problem
## Q5. concurrency control techniques


