# Lab Practicals
## Part B
### Program 1 - VB.NET Program to count the number of Vowels

```vbnet
    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim str1, str2
        Dim vcount, i, str1len As Integer

        str1 = TextBox1.Text
        str1len = Len(str1)
        For i = 1 To str1len
            str2 = Mid(str1, i, 1)
            If str2 = "a" Or str2 = "e" Or str2 = "i" Or str2 = "o" Or str2 = "u" Or str2 = "A" Or str2 = "E" Or str2 = "I" Or str2 = "O" Or str2 = "U" Then
                vcount = vcount + 1
            End If
        Next
        TextBox2.Text = vcount
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Close()
    End Sub
```

![Screenshot](screenshots/vowels.png)

[Source](https://github.com/sounddrill31/VowelCountApp/blob/main/source/VowelCountApp/Form1.vb)

[Download Output](https://github.com/sounddrill31/VowelCountApp/releases/download/12115653768/VowelCountApp-windows-latest-12115653768.zip)
### Program 2 - VB.NET Program to check if number is Odd or Even
### Program 3 - VB.NET Program to calculate compound interest
### Program 4 - VB.NET Program to display the sum of negative and sum of positive numbers 
```vbnet
    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Dim Limit As Integer = Integer.Parse(LimitN.Text)
        Dim arr(Limit) As Integer
        Dim p_n = 0
        Dim n_n = 0


        For i As Integer = 0 To (Limit - 1)
            Dim temp As String = InputBox("Enter Element")
            If (Integer.Parse(temp) >= 0) Then
                p_n = p_n + Integer.Parse(temp)
            Else
                n_n = n_n + Integer.Parse(temp)
            End If
        Next i

        PositiveSum.Text = p_n
        NegativeSum.Text = n_n
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        ' clear the screen
        LimitN.Text = String.Empty
        PositiveSum.Text = String.Empty
        NegativeSum.Text = String.Empty
    End Sub

    Private Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        ' Exit program
        Close()
    End Sub
```

![Screenshot](screenshots/sumnum.png)
![Screenshot of Popup](screenshots/sumnumpopup.png)

[Source](https://github.com/sounddrill31/SumNum_Winforms/blob/main/SumNum/Form1.vb)

[Download Output](https://github.com/sounddrill31/SumNum_Winforms/releases/download/11983858383/SumNum-windows-latest-11983858383.zip)
### Program 5 - VB.NET Program to concat 2 strings
### Program 6 - VB.NET Program to change the styles and fonts of Text
### Program 7 - VB.NET Program to generate student enrollment details
### Program 8 - VB.NET Program to demonstrate MDI parent forms
