## Explain Checksum with example.
Checksum is an error detection method used by upper-layer protocols, considered more reliable than LRC, VRC, and CRC. It employs a Checksum Generator on the sender side and a Checksum Checker on the receiver side to create a unique number from the data for integrity verification. When data is created, a checksum is calculated and sent or saved with it. Upon accessing the data, the checksum is recalculated, and if the two match, the data is likely error-free.

- EXAMPLE:

    Sender Side:
    ```
    10101001        subunit 1  
    00111001        subunit 2        
    11100010        sum (using 1s complement)       
    00011101        checksum (complement of sum)
    ```

    Receiver Side:
    ```
    10101001        subunit 1  
    00111001        subunit 2     
    00011101        checksum 
    11111111            sum
    00000000     sum's complement
    ```
    Result is zero, it means no error.

## Explain CRC with example.
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