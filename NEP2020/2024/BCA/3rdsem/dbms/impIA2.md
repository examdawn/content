## Section-A (2 Marks) 

### Mention any two feature of PL/SQL.
PL/SQL (Procedural Language/Structured Query Language) is a block-structured language developed by Oracle that allows developers to combine the power of SQL with procedural programming constructs. 
- The PL/SQL language enables efficient data manipulation and control-flow logic
- This is done within the Oracle Database in the same shell/interface we use for SQL queries

[(GeeksForGeeks)](https://www.geeksforgeeks.org/plsql-introduction/)

### What is fundamental dependency?
### What is single-user system in DBMS?
### What is time stamping?
### What is an insert anomaly?
### What is a transaction failure?
### What is a transaction processing?
### What is concurrency control?

## Section-B (4 Marks)

### Explain basic syntax of PL/SQL?
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
    executable statements

EXCEPTIONS
    exception handling statements

END;
```

[(GeeksForGeeks)](https://www.geeksforgeeks.org/plsql-introduction/)

### Write a note in anomalies in relational database design.
### Write a note on properties of transactions.
### What is fundamental dependency? Explain
### Explain function with example in PL/SQL.

A standalone function is created using the CREATE FUNCTION statement. The simplified syntax for the CREATE OR REPLACE PROCEDURE statement is:
```PL/SQL
CREATE [OR REPLACE] FUNCTION function_name 
[(parameter_name [IN | OUT | IN OUT] type [, ...])] 
RETURN return_datatype 
{IS | AS} 
BEGIN 
   < function_body > 
END [function_name];
```

-     function-name specifies the name of the function.
-     [OR REPLACE] option allows the modification of an existing function.
-     The optional parameter list contains name, mode and types of the parameters. IN represents the value that will be passed from outside and OUT represents the parameter that will be used to return a value outside of the procedure.
-     The function must contain a return statement.
-     The RETURN clause specifies the data type you are going to return from the function.
-     function-body contains the executable part.
-     The AS keyword is used instead of the IS keyword for creating a standalone function.

Eg.

```SQL
Select * from customers; 
```
| ID | NAME     | AGE | ADDRESS   | SALARY   | 
|----|----------|-----|-----------|----------|
|  1 | Ramesh   |  32 | Ahmedabad |  2000.00 | 
|  2 | Khilan   |  25 | Delhi     |  1500.00 | 

```PL/SQL
CREATE OR REPLACE FUNCTION totalCustomers 
RETURN number IS 
   total number(2) := 0; 
BEGIN 
   SELECT count(*) into total 
   FROM customers; 
    
   RETURN total; 
END; 
/
```

Calling the Function
```PL/SQL
DECLARE 
   c number(2); 
BEGIN 
   c := totalCustomers(); 
   dbms_output.put_line('Total no. of Customers: ' || c); 
END; 
/
```

### Explain various transaction failure in DBMS

## Section-C (8 Marks)

### What is normalization? Explain 1NF, 2NF, 3NF.
### Explain transaction states in DBMS
### Write a note on types of lock in concurrency control.
### Explain various types of normalization.
### Differentiate between single-user and multi-user system.
### Write a note on the types of locks in concurrency control.
### Write a note on decomposition?
### Write a note on transaction read and write operations.
### Write a note on lock based protocols?
