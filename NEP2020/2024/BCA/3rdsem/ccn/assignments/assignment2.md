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

## Q3.Explain Hamming Code with a neat example.

## Q4.Explain Stop and Wait Protocol.
## Q5.Explain Stop and Wait Automatic Repeat Request with a neat diagram.
## Q6.Explain Go Back-N Automatic Repeat Request.
## Q7.Explain Selective Repeat Request.
## Q8.Explain Designing Issues with a Network Layer.
## Q9.Explain Distance Vector Routing Algorithm.
## Q10.Explain Link Status Routing Algorithm.
## Q11.Explain Leaky Bucket Algorithm with an neat diagram.
## Q12.Explain Token Bucket Algorithm with an neat diagram.
## Q13.Explain service provided by Transport Layer Protocol.
- **Process to Process Delivery**: 
    - The Transport Layer uses port numbers (16-bit addresses) to deliver data segments to the correct process on a host, differentiating multiple processes running simultaneously.
- **End-to-End Connection between Hosts**:
    - It establishes connections using protocols like TCP (reliable, connection-oriented) and UDP (unreliable, best-effort delivery), suitable for different applications such as video conferencing.
- **Multiplexing and Demultiplexing**: 
    - Multiplexing combines data from multiple processes into a single packet using port numbers, while demultiplexing distributes incoming packets to the appropriate processes on the receiver's side.
- **Data Integrity and Error Correction**: 
    - It ensures data integrity by using error detection codes and checksums, along with ACK/NACK services to confirm the successful delivery of data.
- **Flow Control**: 
    - Flow control prevents data loss by managing the rate of data transmission between sender and receiver, primarily using the sliding window protocol to adjust the flow based on receiver capacity. [[1](https://www.geeksforgeeks.org/transport-layer-responsibilities/)]

## Q14.Explain the elements of Transport Layer.
Transport Layer is a 4th layer from the top. The main role of the transport layer is to provide the communication services directly to the application processes running on different hosts. The elements of Transport Layer are: 
- **Error Control**:  
    - The Data Link Layer checks for errors only between devices on the same link, so errors introduced by routers are not detected. In contrast, the Transport Layer performs end-to-end error checking to ensure that packets arrive correctly.
- **Sequence Control**:  
    - On the sending end, the Transport Layer ensures that packets from upper layers are suitable for lower layers, while on the receiving end, it guarantees the correct reassembly of the transmission's segments.
- **Loss Control**:  
    - The Transport Layer ensures that all fragments of a transmission arrive at the destination. On the sending end, it assigns sequence numbers to each fragment, enabling the receiver's Transport Layer to identify any missing segments.
- **Flow Control**:  
    - Flow control prevents the sender from overwhelming the receiver, which can lead to packet loss and increased network congestion. The Transport Layer employs the sliding window protocol to efficiently manage data transmission and ensure the receiver is not overloaded. This protocol operates on a byte-oriented basis rather than a frame-oriented one. [[1](https://www.javatpoint.com/computer-network-transport-layer)]