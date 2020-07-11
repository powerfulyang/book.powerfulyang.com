<!-- toc -->

# OSI [Open System Interconnection Model]
 For IT professionals, the seven layers refer to the Open Systems Interconnection (OSI) model,
  a conceptual framework that describes the functions of a networking or telecommunication 
  system.  
## Layer 7 - Application
To further our bean dip analogy, the Application Layer is the one at the top - it’s what most users see. In the OSI model, this is the layer that is the “closest to the end user”. Applications that work at Layer 7 are the ones that users interact with directly. A web browser (Google Chrome, Firefox, Safari, etc.) or other app - Skype, Outlook, Office - are examples of Layer 7 applications.
+ 它是计算机用户，以及各种应用程序和网络之间的接口，其功能是直接向用户提供服务，完成用户希望在网络上完成的各种工作。
+ 应用层为用户提供的服务和协议有：文件服务、目录服务、文件传输服务（FTP）、远程登录服务（Telnet）、电子邮件服务（E-mail）、打印服务、安全服务、网络管理服务、数据库服务等
+ 应用层向最终用户应用程序提供网络服务。网络服务通常是处理用户数据的协议。例如，在Web浏览器应用程序中，应用程序层协议HTTP打包了发送和接收网页内容所需的数据。该层7将数据提供给表示层（并从中获得数据）。

## Layer 6 - Presentation
The Presentation Layer represents the area that is independent of data representation at the application layer. In general, it represents the preparation or translation of application format to network format, or from network formatting to application format. In other words, the layer “presents” data for the application or the network. A good example of this is encryption and decryption of data for secure transmission - this happens at Layer 6.
+ 它对来自应用层的命令和数据进行解释，对各种语法赋予相应的含义，并按照一定的格式传送给会话层。其主要功能是“处理用户信息的表示问题，如：数据格式处理、数据的编码、压缩和解压缩、加密和解密。
+ 表示层是所有OSI模型中最简单的功能。

## Layer 5 - Session
When two devices, computers or servers need to “speak” with one another, a session needs to be created, and this is done at the Session Layer. Functions at this layer involve setup, coordination (how long should a system wait for a response, for example) and termination between the applications at each end of the session.
+ 负责连接，建立和断开连接的时机，数据的发送顺序

## Layer 4 – Transport (TCP，UDP)
The Transport Layer deals with the coordination of the data transfer between end systems and hosts. How much data to send, at what rate, where it goes, etc. The best known example of the Transport Layer is the Transmission Control Protocol (TCP), which is built on top of the Internet Protocol (IP), commonly known as TCP/IP. TCP and UDP port numbers work at Layer 4, while IP addresses work at Layer 3, the Network Layer.
+ 负责连接的建立和断开和数据的传输，并保证数据的可靠性（数据不丢失）和完整性（数据不缺失）和正确性（顺序不混乱）
+ 传输的数据单位是段segment
+ 传输层通过网络连接传递数据。TCP是传输第4层网络协议的最常见示例。 不同的传输协议可能支持一系列可选功能，包括错误恢复，流控制以及对重传的支持。

## Layer 3 - Network (IP，ICMP，RIP，OSPF，BGP，IGMP)
Here at the Network Layer is where you’ll find most of the router functionality that most networking professionals care about and love. In its most basic sense, this layer is responsible for packet forwarding, including routing through different routers. You might know that your Boston computer wants to connect to a server in California, but there are millions of different paths to take. Routers at this layer help do this efficiently.
+ 选择合适的路径将数据发送到目标地址（ip地址）
+ 传输的是数据包
+ 网络层在数据链路层之上添加了路由的概念。当数据到达网络层时，将检查每个帧内包含的源地址和目标地址，以确定数据是否已到达其最终目标。如果数据已到达最终目的地，则此第3层将数据格式化为传递到传输层的数据包。否则，网络层将更新目标地址，并将帧向下推至较低层。 为了支持路由，网络层维护逻辑地址，例如 网络上设备的IP地址。网络层还管理这些逻辑地址和物理地址之间的映射。在IP网络中，此映射是通过地址解析协议（ARP）完成的。  
> 数据链路层和网络层的共同点和区别：
>  
>  1、都是基于目标地址将数据发给接收端，但网络层是ip地址，数据链路层是mac地址。网络层发送的整个数据，数据链路层发送的是数据的一个分段

## Layer 2 – Data Link (SLIP，CSLIP，PPP，ARP，RARP，MTU)
The Data Link Layer provides node-to-node data transfer (between two directly connected nodes), and also handles error correction from the physical layer. Two sublayers exist here as well - the Media Access Control (MAC) layer and the Logical Link Control (LLC) layer. In the networking world, most switches operate at Layer 2.
+ 设备： 网卡
+ 负责建立和管理节点间的链路（mac地址）
+ 传输的是frame数据帧
+ 从物理层获取数据时，数据链路层会检查物理传输错误，并将位打包到数据“帧”中。数据链路层还管理物理寻址方案，例如用于以太网的MAC地址，控制任何各种网络设备对物理介质的访问。因为数据链路层是OSI模型中最复杂的单个层，所以它通常分为两部分：媒体访问控制子层和逻辑链路控制子层

## Layer 1 - Physical (ISO2110, IEEE802, IEEE802.2)
At the bottom of our OSI bean dip we have the Physical Layer, which represents the electrical and physical representation of the system. This can include everything from the cable type, radio frequency link (as in an 802.11 wireless systems), as well as the layout of pins, voltages and other physical requirements. When a networking problem occurs, many networking pros go right to the physical layer to check that all of the cables are properly connected and that the power plug hasn’t been pulled from the router, switch or computer, for example. 
+ 传输介质： 网线电缆、集线器、光纤、还有无线信道。
+ 传输的是比特流，单位是bit比特位（本质上是0、1高低电平）。
+ 在物理层，使用物理介质支持的信号类型来传输数据：电压，射频或红外或普通光脉冲。
