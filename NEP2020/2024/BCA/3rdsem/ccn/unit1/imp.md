# Unit 1: Introduction

## Important Questions

### Q1.What is network topology? Explain different types of topology 
Network topology refers to the way that nodes and connections are physically and logically arranged in a network.

Networks consist of a series of links and nodes. 
Nodes include devices like routers, switchers, repeaters, and computers. 

A network topology describes how these components are arranged in relation to each other and how data moves through the network.

![IBM Topology types]

#### Point to Point Topology 
Point to point connects two nodes, in which one is the sender and the other one is the receiver. 

Point-to-Point provides high bandwidth.
![Point to Point topology](https://media.geeksforgeeks.org/wp-content/uploads/20240614235231/Point-to-point-topology.png)

#### Mesh Topology 
In a mesh topology, every device is connected to another device via a particular channel.
![Mesh Topology](https://media.geeksforgeeks.org/wp-content/uploads/1-75.png)

Advantages of Mesh Topology:
- Communication is very fast between the nodes.
- Mesh Topology is robust.
- The fault is diagnosed easily. Data is reliable because data is transferred among the devices through dedicated channels or links.
- Provides security and privacy.

Disadvantages of Mesh Topology:
- Installation and configuration are difficult.
- The cost of cables is high as bulk wiring is required, hence suitable for less number of devices.
- The cost of maintenance is high.


#### Star Topology 
In Star Topology, all the devices are connected to a single hub through a cable. 

This hub is the central node and all other nodes are connected to the central node

![Star Topology](https://media.geeksforgeeks.org/wp-content/uploads/2-49.png)

 Advantages of Star Topology:
- If N devices are connected to each other in a star topology, then the number of cables required to connec- them is N. So, it is easy to set up.
- Each device requires only 1 port i.e. to connect to the hub, therefore the total number of ports required is N.
- It is Robust. If one link fails only that link will affect and not other than that.
- Easy to fault identification and fault isolation.
- Star topology is cost-effective as it uses inexpensive coaxial cable.

Disadvantages of Star Topology:
- If the concentrator (hub) on which the whole topology relies fails, the whole system will crash down.
- The cost of installation is high.
- Performance is based on the single concentrator i.e. hub.


#### Bus Topology 
Bus Topology is a network type in which every computer and network device is connected to a single cable. 

It is bi-directional. 

It is a multi-point connection and a non-robust topology because if the backbone fails the topology crashes.

![Bus Topology](https://media.geeksforgeeks.org/wp-content/uploads/3-55.png)

 Advantages of Bus Topology:
- If N devices are connected to each other in a bus topology, then the number of cables required to connect them is 1, known as backbone cable, and N drop lines are required.
- Coaxial or twisted pair cables are mainly used in bus-based networks that support up to 10 Mbps.
- The cost of the cable is less compared to other topologies, but it is used to build small networks.
- Bus topology is familiar technology as installation and troubleshooting techniques are well known.
- CSMA is the most common method for this type of topology.

Disadvantages of  Bus Topology:
- A bus topology is quite simpler, but still, it requires a lot of cabling.
- If the common cable fails, then the whole system will crash down.
- If the network traffic is heavy, it increases collisions in the network. To avoid this, various protocols are used in the MAC layer known as Pure Aloha, Slotted Aloha, CSMA/CD, etc.
- Adding new devices to the network would slow down networks. 
- Security is very low. 
#### Ring Topology
In a Ring Topology, it forms a ring connecting devices with exactly two neighboring devices. 

A number of repeaters are used for Ring topology with a large number of nodes, because if someone wants to send some data to the last node in the ring topology with 100 nodes, then the data will have to pass through 99 nodes to reach the 100th node. Hence to prevent data loss, repeaters are used in the network.

![Ring Topology](https://media.geeksforgeeks.org/wp-content/uploads/4-32.png)

 Advantages of Ring Topology:
- The data transmission is high-speed.
- The possibility of collision is minimum in this type of topology.
- Cheap to install and expand.
- It is less costly than a star topology.

Disadvantages of Ring Topology:
- The failure of a single node in the network can cause the entire network to fail.
- Troubleshooting is difficult in this topology.
- The addition of stations in between or the removal of stations can disturb the whole topology.
- Less secure.


#### Tree Topology 
 Tree Topology is a variation of the Star topology. This topology has a hierarchical flow of data. 

 ![Tree topology](https://media.geeksforgeeks.org/wp-content/uploads/20240614234036/Tree-topology.png)

 Advantages of Tree Topology:
- It allows more devices to be attached to a single central hub thus it decreases the distance that is traveled by the signal to come to the devices.
- It allows the network to get isolated and also prioritize from different computers.
- We can add new devices to the existing network.
- Error detection and error correction are very easy in a tree topology.

Disadvantages of Tree Topology:
- If the central hub gets fails the entire system fails.
- The cost is high because of the cabling.
- If new devices are added, it becomes difficult to reconfigure.

#### Hybrid Topology 
This topological technology is the combination of all the various types of topologies we have seen above. 

Hybrid Topology is used when the nodes are free to take any form. 

It means these can be individuals such as Ring or Star topology or can be a combination of various types of topologies seen above. Each individual topology uses the protocol that has been shown earlier. 

![Hybrid Topology](https://media.geeksforgeeks.org/wp-content/uploads/20240615002149/Hybrid-Topology.png)
 Advantages of Hybrid Topology:
- This topology is very flexible .
- The size of the network can be easily expanded by adding new devices.

Disadvantages of Hybrid Topology:
- It is challenging to design the architecture of the Hybrid Network.
- Hubs used in this topology are very expensive.
- The infrastructure cost is very high as a hybrid network requires a lot of cabling and network devices .


- [IBM](https://www.ibm.com/topics/network-topology)
- [GeeksForGeeks](https://www.geeksforgeeks.org/types-of-network-topology/)
### Q2.Write a note on:
- LAN
- MAN
- WAN

### q3. Explain OSI model with a neat diagram 

### Q4. Write a note on TCP/IP
### Q5. Explain application of computer networks in detail 
### Q6. What is communication?
### Q7. What is a network?
### 8. Wat is a computer network?
### 10. What is the physical layer?
### 11. Explain layers of TCP/ip model
### 12. What are the Advantages and disadvantages of topology 
Answered in Q1

## Source:
- Questions: Dictated in class