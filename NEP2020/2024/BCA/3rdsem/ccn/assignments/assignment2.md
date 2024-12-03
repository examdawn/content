## Q1. Explain Checksum with example.
Checksum is an error detection method used by upper-layer protocols, considered more reliable than LRC, VRC, and CRC. It employs a Checksum Generator on the sender side and a Checksum Checker on the receiver side to create a unique number from the data for integrity verification. When data is created, a checksum is calculated and sent or saved with it. Upon accessing the data, the checksum is recalculated, and if the two match, the data is likely error-free.

- EXAMPLE:

    Sender Side:
    ```txt
    10101001        subunit 1  
    00111001        subunit 2        
    11100010        sum (using 1s complement)       
    00011101        checksum (complement of sum)
    ```

    Receiver Side:
    ```txt
    10101001        subunit 1  
    00111001        subunit 2     
    00011101        checksum 
    11111111        sum
    00000000        sum's complement
    ```
    Result is zero, it means no error. [[1](https://www.geeksforgeeks.org/error-detection-code-checksum/)]


## Q2. Explain CRC with example.
A cyclic redundancy check (CRC) is a mathematical technique that provides a way to detect errors in transmitted data by appending a special code, called a checksum, to the original information. CRC plays a vital role in identifying and correcting potential data corruption in networking, where reliable data transfer is paramount. [[1](https://www.purestorage.com/knowledge/cyclic-redundancy-check.html)]
- EXAMPLE: 
    
    Sender Side:
    ```txt
    Data word to be sent - 100100
    Key - 1101 [ Or generator polynomial x3 + x2 + 1]
    ```

    ![sender](https://media.geeksforgeeks.org/wp-content/uploads/rational1.jpg)

    Therefore, the remainder is 001 and hence the encoded data sent is 100100001.
    
    Receiver Side:
    ```txt
    Code word received at the receiver side  100100001
    ```

    ![receiver](https://media.geeksforgeeks.org/wp-content/uploads/rational2.jpg)

    Therefore, the remainder is all zeros. Hence, the
    data received has no error. [[2](https://www.geeksforgeeks.org/modulo-2-binary-division/)]

## Explain Hamming Code with a neat example.

## Explain Stop and Wait Protocol.
## Explain Stop and Wait Automatic Repeat Request with a neat diagram.
## Explain Go Back-N Automatic Repeat Request.
## Explain Selective Repeat Request.
## Explain Designing Issues with a Network Layer.
## Explain Distance Vector Routing Algorithm.
## Explain Link Status Routing Algorithm.
## Explain Leaky Bucket Algorithm with an neat diagram.
## Explain Token Bucket Algorithm with an neat diagram.
## Explain service provided by Transport Layer Protocol.
## Explain the elements of Transport Layer.