# Assignment 1

## Write a note on decomposition with examples.
Decomposition refers to the division of tables into multiple tables to produce consistency in the data.

![Types](https://media.geeksforgeeks.org/wp-content/uploads/20240225103808/Screenshot-2024-02-25-103756.png)

### Types of Decomposition

There are two types of Decomposition:
- Lossless Decomposition
- Lossy Decomposition

### Lossless Decomposition
The process in which where we can regain the original relation R with the help of joins from the multiple relations formed after decomposition. This process is termed as lossless decomposition.

It is used to remove the redundant data from the database while retaining the useful information.

The lossless decomposition tries to ensure following things:
- While regaining the original relation, no information should be lost.
- If we perform join operation on the sub-divided relations, we must get the original relation.

EXAMPLE:
There is a relation called R(A,B,C)
|**A**|**B**|**C**|
| ---| ---| ---|
| 55 | 16 | 27 |
| 48 | 52 | 89 |





### Lossy decomposition:

## Source:
- Q1 answer - [GeeksForGeeks](https://www.geeksforgeeks.org/decomposition-in-dbms/)