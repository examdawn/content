# C#/Dotnet
## Important Questions, Internal Assessment 2
### Q1. Explain the If-Else statement in VB.NET and Give one example
If-Else, also known as If-Then-Else statements are used for basic conditional logic.
- It conditionally executes a group of statements, depending on the value of an expression.

Syntax:
```vbnet
If condition Then
    statements
ElseIf condition2 Then
     More Statements
Else
     else statements
End If
```
Just like if statement, it is always followed by "End If" to show that the if-else block is over.

Example: 
```vbnet
Dim n As Integer = 5

If n Mod 2 = 0 Then
    Console.WriteLine("Even")
Else
    Console.WriteLine("Odd")
End If
```

[Official Microsoft Docs](https://learn.microsoft.com/en-us/dotnet/visual-basic/language-reference/statements/if-then-else-statement)
### Q2. What is the purpose of Time control? 

### Q3. What is the use of Track bar control in VB.NET?
The Windows Forms TrackBar control (also sometimes called a "slider" control) is used for navigating through a large amount of information or for visually adjusting a numeric setting. 
- The TrackBar control has two parts: the thumb, also known as a slider, and the tick marks. 
    - The thumb is the part that can be adjusted. 
    - Its position corresponds to the Value property. 
    - The tick marks are visual indicators that are spaced at regular intervals. 
- The key properties of the TrackBar control are 
    - Value
    - TickFrequency is the spacing of the ticks
    - Minimum, and Maximum are the smallest and largest values that can be represented on the track bar

[Official Microsoft Docs](https://learn.microsoft.com/en-us/dotnet/desktop/winforms/controls/trackbar-control-overview-windows-forms)

### Q4. Write any two advantages of ADO.NET
ADO.NET(Active Data Objects .NET) is the database access framework used to connect to data sources like MS SQL Server, Microsoft Access, Oracle SQL, MySQL/MariaDB, SQLite, direct XML, etc

ADO.NET has many features like:
- Performance
    - ADO.NET works by using a disconnected data architecture 
    - This means it can scale easily without putting a huge load on the database server
    - Everything is handled Client-Side so it improves performance
- Scalability
    - Because it uses a disconnected data architecture, it can scale easily
    - Applications do not keep database locks for a longer time
    - It encourages programmers to use limited resources and allow concurrent use by design

[(GeeksForGeeks)](https://www.geeksforgeeks.org/introduction-to-ado-net/)
### Q5. Explain looping statements in VB.NET
In Visual Basic, loop statements are used to run code repeatedly while the condition is maintained.

There are 4 types of Loops:
- While Loops
    - While...End Loops repeat a set of statements as long as the given condition remains true
    - **Exit While** is functionally equivalent to break keyword from other languages and is used to exit the loop
    - **Continue While** is functionally equivalent to continue keyword and is used to skip the iteration and move to next iteration of the loop
    - Syntax:
        ```vbnet
        While condition
            statements
        End While
        ```
    - Example:
        ```vbnet
        While index <= 10
            Console.WriteLine(index.ToString)
            index += 1
        End While
        ```
- Do Loops
    - Do...Loop repeats a set of statements repeats code till the condition is no longer maintained
    - You can use either While or Until to specify condition, but not both. 
        - If you give neither, the loop continues until an Exit transfer control out of the loop.
    - Continue Do is functionally equivalent to continue keyword and is used to skip the iteration and move to next iteration of the loop
    - Exit Do is functionally equivalent to break keyword from other languages and is used to exit the loop
    - Syntax:
        ```vbnet
        Do { While | Until } condition
            statements
        Loop
        ```
    - Example:
        ```vbnet
        Do While index <= 10
            Console.WriteLine(index.ToString)
            index += 1
        Loop
        ```
- For Loops
    - For...Next repeats a set of statements repeats code till the condition is no longer maintained while maintaining a counter
    - **Exit For** is functionally equivalent to break keyword from other languages and is used to exit the loop
    - **Continue For** is functionally equivalent to continue keyword and is used to skip the iteration and move to next iteration of the loop
    - Syntax:
        ```vbnet
        For counter = start To End 
            statements
        Next
        ```
    - Example: 
        ```vbnet
        For index As Integer = 1 To 5
            Console.WriteLine(index.ToString)
        Next
        ```
- For Each Loops
    - For Each...Next repeats a set of statements repeats code for every element of the collection till the condition is no longer maintained while maintaining a counter
    - It is used for a collection of items like arrays
    - **Exit For** is functionally equivalent to break keyword from other languages and is used to exit the loop
    - **Continue For** is functionally equivalent to continue keyword and is used to skip the iteration and move to next iteration of the loop
    - Syntax:
        ```vbnet
        For Each element In group
            statements
        Next
        ```
    - Example: 
        ```vbnet
        Dim arr() As Integer = {1, 2, 3, 4, 5}
        For Each item As Integer In arr
            Console.WriteLine(item)
        Next
        ```

[Official Microsoft Docs](https://learn.microsoft.com/en-us/dotnet/visual-basic/programming-guide/language-features/control-flow/loop-structures)
### Q6. Write the difference between ADO and ADO.NET
 | ADO | ADO.NET |
 |---| --- |
| It is based on COM (Component Object Modelling). | It is a CLR (Common Language Runtime) based library. |
| It works only when data store is connected. | It does not needs active connection to access data from data store. |
| It has feature of locking. | It does not have feature of locking.
| It access and store data from data source by recordset object. | It access and store data from data source by dataset object. |
| XML integration is not feasible in ADO. | XML integration is feasible in ADO.NET. |
| In ADO, data is stored in binary form. | While in this, data is stored in XML. |
| It allow us to create client side cursors only. | It give us the choice of using weather client side and server side cursors. |
| It requires SQL JOINs and UNIONs to combine data from multiple tables in a single result table. | It uses DataRelational objects, for combining data from multiple tables without requiring JOINs and UNIONs. |
| It supports sequential access of rows in a RecordSet. | It allows completely non-sequential data access in DataSet through collection based hierarchy. |

[GeeksForGeeks](https://www.geeksforgeeks.org/difference-between-ado-and-ado-net/)
### Q7. Explain about combo box control and picture box control with an example
### Q8. Explain Data reader and Data adapter in ADO.NET
### Q9. Explain any 4 tools and its properties from toolbox of VB.NET
### Q10. Explain subroutine and functions with the help of example
### Q11. Explain the architecture of ADO.NET
### Q12. What is Data set and Data Provider? 
### Q13. What is docking and undocking in visual studio?
### Q14. Explain Task bar and Progress bar controls of VB.NET
### Q15. Explain the steps to create a simple form using VB.NET
### Q16. Explain VB.NET Conditional and looping statements with a suitable example
### Q17. Explain Exception Handling in C# with example syntax