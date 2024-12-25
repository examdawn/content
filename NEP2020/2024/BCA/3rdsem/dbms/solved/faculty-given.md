# Database Management Systems 
## Important Questions and Topics
### Unit 1:
#### Q1. Database architecture
#### Q2. Database Schema and Models
#### Q3. Data Independence
#### Q4. Database Languages
#### Q5. Classification of DBMS
### Unit 2:
#### Q1. Construct a ER diagram for Company database,Student database,Employee salary database.
#### Q2. Define Entity, Relationship and types of cardinality
#### Q3. Explain ER notations used in database Schema design.
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
#### Q4. What is an attribute? What are the types of attributes.
[Already Answered in Q3](#q3-explain-er-notations-used-in-database-schema-design)
#### Q5. What is a relationship? Give an example of all types of relationships.

### Unit 3:
#### Q1. What is a Domain, Attribute and Tuple?
#### Q2. Explain Relational Model constraints, Domain Constraints, Referential Constraints,Integrity constraints, Null constraints.
#### Q3. Explain operators in Relational algebra? Specifically Unary, Projection, binary 
#### Q4. What is join operator? Explain its types with an example.
#### Q5. Explain nested Queries with example
#### Q6. Describe the PL/SQL block
#### Q7. Features of PL/SQL
#### Q8. What is cursor and its types
#### Q9. Explain exception with an example?
### Unit 4:
#### Q1. Anamolies in relational Database design
#### Q2. Decomposition 
#### Q3. Functional Dependencies
#### Q4. 1st normal Form
#### Q5. 2nd normal Form
#### Q6.  3rd normal form
#### Q7. BCNF
### Unit 5:
#### Q1. Transaction states
#### Q2.  Transaction operations
#### Q3. Properties of Transaction
#### Q4. Concurrency control problem
#### Q5. concurrency control techniques


