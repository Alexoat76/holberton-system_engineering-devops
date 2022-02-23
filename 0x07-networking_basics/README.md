![Brand](https://assets.website-files.com/6105315644a26f77912a1ada/610540e8b4cd6969794fe673_Holberton_School_logo-04-04.svg)

# 0x07. Networking basics #0
<div style="text-align: justify">
	
In this project, you should be to learn about `networking concepts`. Practice write Bash Script for learn OSI model, `LAN` and `WAN` networks, and `TCP/UDP` data transfer protocols.

<div style="text-align: justify">
Don't forget to fully meet the following development requirements. </div>


# Getting Started :running:

## Table of Contents :clipboard:

* [Requirements](#requirements-page_with_curl)
* [Tasks](#tasks-page_with_curl)
* [Credits](#credits)

## Requirements :page_with_curl:

### Resources

**Read or watch** :

[![M](https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Google_2015_logo.svg/80px-Google_2015_logo.svg.png)](https://www.google.com/search?q=osi+model+explained&oq=osi+model&aqs=chrome.1.69i57j0i512l9.4954j0j15&sourceid=chrome&ie=UTF-8)

[![M](https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Logo_of_YouTube_%282015-2017%29.svg/70px-Logo_of_YouTube_%282015-2017%29.svg.png)](https://www.google.com/search?q=osi+model+explained&source=lnms&tbm=vid&sa=X&ved=2ahUKEwj1sqrq0pb2AhV1SzABHZQ8Bn4Q_AUoAXoECAEQAw&biw=1334&bih=670&dpr=1.25)

<div style="text-align: justify">
	
[OSI model](https://en.wikipedia.org/wiki/OSI_model)</div>
<div style="text-align: justify">

[Different types of network](https://www.lifewire.com/lans-wans-and-other-area-networks-817376)</div>
<div style="text-align: justify">
	
[LAN network](https://en.wikipedia.org/wiki/Local_area_network)</div>
	
[WAN network](https://en.wikipedia.org/wiki/Wide_area_network)</div>

[Internet](https://en.wikipedia.org/wiki/Internet)</div>

[MAC address](https://whatismyipaddress.com/mac-address)</div>

[What is an IP address](https://www.bleepingcomputer.com/tutorials/ip-addresses-explained/)</div>

[Private and public address](https://www.iplocation.net/public-vs-private-ip-address)</div>

[IPv4 and IPv6](https://www.webopedia.com/insights/ipv6-ipv4-difference/)</div>

[Localhost](https://en.wikipedia.org/wiki/Localhost)</div>

[TCP and UDP](https://www.howtogeek.com/190014/htg-explains-what-is-the-difference-between-tcp-and-udp/)</div>

[TCP/UDP ports List](https://en.wikipedia.org/wiki/List_of_TCP_and_UDP_port_numbers)</div>

[What is ping /ICMP](https://en.wikipedia.org/wiki/Ping_%28networking_utility%29)</div>

[Positional parameters](https://wiki.bash-hackers.org/scripting/posparams)</div>

### man or help:

`netstat`
`ping`

* OSI model
  * What is it?
  * How many layers does it have?
  * How is it organized?
* LAN
  * What is it?
  * What is its typical usage?
  * What is its typical geographical size?
* WAN
  * What is it?
  * What is its typical usage?
  * What is its typical geographical size?
* What is the Internet?
* IP addresses
  * What are they?
  * What are the two types of IP addresses?
  * What is `localhost`?
  * What is a subnet?
  * Why was IPv6 created?
* TCP/UDP
  * What are the 2 mainly used data transfer protocols for IP?
  * What is the main difference between TCP and UDP?
* TCP/UDP Ports
  * What is a port?
  * What are ports are used for SSH, HTTP, and HTTPS?
* What tools/protocols are often used to check if a device is connected to a network?
<div style="text-align: justify">
	
## General :page_with_curl:
<div style="text-align: justify">
* Allowed editors: vi, vim, emacs. </div>
<div style="text-align: justify">
	
*All your files will be compiled on `Ubuntu 20.04` LTS </div>
<div style="text-align: justify">
* All your files should end with a new line. </div>
<div style="text-align: justify">
	
*A `README.md` file, at the root of the folder of the project is mandatory. </div>

<div style="text-align: justify">
* All your Bash script files must be executable</div>
	
<div style="text-align: justify">
	
*The first line of all your Bash scripts should be exactly `#!/usr/bin/env bash`. </div>

<div style="text-align: justify">
	
*The second line of all your Bash scripts should be a comment explaining what is the script doing. 
<div style="text-align: justify">

## Description of Bash Files :pushpin:
	
* `4-TCP_and_UDP_ports`: Bash script to display actively listening sockets and their PIDs
* `5-is_the_host_on_the_network`: Bash script to ping an IP address passed as argument 5 times
	
## Tasks :page_with_curl:

* **0. OSI model**
  * [0-OSI_model](./0-OSI_model): Text file answering the following questions:
  * What is the OSI model?
    1. Set of specifications that network hardware manufacturers must respect
    2. The OSI model is a conceptual model that characterizes the communication
    functions of a telecommunication system without regard to their underlying
    internal structure and technology.
    3. The OSI model is a model that characterizes the communication functions
    of a telecommunication system with a strong regard for their underlying
    internal structure and technology.
  * How is the OSI model organized?
    1. Alphabetically
    2. From the lowest to the highest level
    3. Randomly

* **1. Types of network**
  * [1-types_of_network](./1-types_of_network): Text file answering the following questions:
  * What type of network are Holberton iMacs connected to?
    1. Internet
    2. WAN
    3. LAN
  * What type of network could connect an office in one building to another
  office in a building a few streets away?
    1. Internet
    2. WAN
    3. LAN
  * What network do you use when you browse www.holbertonschool.com from your
  smartphone (not connected to the Wifi)?
    1. Internet
    2. WAN
    3. LAN

* **2. MAC and IP address**
  * [2-MAC_and_IP_address](./2-MAC_and_IP_address): Text file answering the following questions:
  * What is a MAC address?
    1. The name of a network interface
    2. The unique identifier of a network interface
    3. A network interface
  * What is an IP address?
    1. Is to devices connected to a network what postal address is to houses
    2. The unique identifier of a network interface
    3. Is a number that network devices use to connect to networks

* **3. UDP and TCP**
  * [3-UDP_and_TCP](./3-UDP_and_TCP): Text file answering the following questions
  (boxes refer to an image provided by Holberton School):
  * Which statement is correct for the TCP box:
    1. It is a protocol that is transferring data in a slow way but surely
    2. It is a protocol that is transferring data in a fast way and might loss
    data along in the process
  * Which statement is correct for the UDP box:
    1. It is a protocol that is transferring data in a slow way but surely
    2. It is a protocol that is transferring data in a fast way and might loss
    data along in the process
  * Which statement is correct for the TCP worker:
    1. Have you received boxes x, y, z?
    2. May I increase the rate at which I am sending you boxes?

* **4. TCP and UDP ports**
  * [4-TCP_and_UDP_ports](./4-TCP_and_UDP_ports): Bash script that displays listening ports.
  * Only shows listening sockets.
  * Displays the PID and name of the program to which each socket belongs.
	
```
sylvain@ubuntu$ sudo ./4-TCP_and_UDP_ports
Active Internet connections (only servers)
Proto Recv-Q Send-Q Local Address           Foreign Address         State       PID/Program name
tcp        0      0 *:sunrpc                *:*                     LISTEN      518/rpcbind
tcp        0      0 *:ssh                   *:*                     LISTEN      1240/sshd
tcp        0      0 *:32938                 *:*                     LISTEN      547/rpc.statd
tcp6       0      0 [::]:sunrpc             [::]:*                  LISTEN      518/rpcbind
tcp6       0      0 [::]:ssh                [::]:*                  LISTEN      1240/sshd
tcp6       0      0 [::]:33737              [::]:*                  LISTEN      547/rpc.statd
udp        0      0 *:sunrpc                *:*                                 518/rpcbind
udp        0      0 *:691                   *:*                                 518/rpcbind
udp        0      0 localhost:723           *:*                                 547/rpc.statd
udp        0      0 *:60129                 *:*                                 547/rpc.statd
udp        0      0 *:3845                  *:*                                 562/dhclient
udp        0      0 *:bootpc                *:*                                 562/dhclient
udp6       0      0 [::]:47444              [::]:*                              547/rpc.statd
udp6       0      0 [::]:sunrpc             [::]:*                              518/rpcbind
udp6       0      0 [::]:50038              [::]:*                              562/dhclient
udp6       0      0 [::]:691                [::]:*                              518/rpcbind
Active UNIX domain sockets (only servers)
Proto RefCnt Flags       Type       State         I-Node   PID/Program name    Path
unix  2      [ ACC ]     STREAM     LISTENING     7724     518/rpcbind         /run/rpcbind.sock
unix  2      [ ACC ]     STREAM     LISTENING     6525     1/init              @/com/ubuntu/upstart
unix  2      [ ACC ]     STREAM     LISTENING     8559     835/dbus-daemon     /var/run/dbus/system_bus_socket
unix  2      [ ACC ]     STREAM     LISTENING     9190     1087/acpid          /var/run/acpid.socket
unix  2      [ ACC ]     SEQPACKET  LISTENING     7156     378/systemd-udevd   /run/udev/control
sylvain@ubuntu$
```

* **5. Is the host on the network**
  * [5-is_the_host_on_the_network](./5-is_the_host_on_the_network): Bash script that
  pings an IP address received as an argument 5 times.
  * Usage: `5-is_the_host_on_the_network {IP_ADDRESS}`.
	
```
sylvain@ubuntu$ ./5-is_the_host_on_the_network 8.8.8.8
PING 8.8.8.8 (8.8.8.8) 56(84) bytes of data.
64 bytes from 8.8.8.8: icmp_seq=1 ttl=63 time=12.9 ms
64 bytes from 8.8.8.8: icmp_seq=2 ttl=63 time=13.6 ms
64 bytes from 8.8.8.8: icmp_seq=3 ttl=63 time=7.83 ms
64 bytes from 8.8.8.8: icmp_seq=4 ttl=63 time=11.3 ms
64 bytes from 8.8.8.8: icmp_seq=5 ttl=63 time=7.57 ms

--- 8.8.8.8 ping statistics ---
5 packets transmitted, 5 received, 0% packet loss, time 4006ms
rtt min/avg/max/mdev = 7.570/10.682/13.679/2.546 ms
sylvain@ubuntu$
sylvain@ubuntu$ ./5-is_the_host_on_the_network
Usage: 5-is_the_host_on_the_network {IP_ADDRESS}
sylvain@ubuntu$
```
	
## Credits

## Author(s):blue_book:

Work is owned and maintained by 
	**`Alex Orland Arévalo Tribaldos`**  and credits for `group projects` are displayed in the respective `README.md` files.

<3915@holbertonschool.com>
	
[![M](https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Octicons-mark-github.svg/25px-Octicons-mark-github.svg.png)](https://github.com/Alexoat76)
[![M](https://upload.wikimedia.org/wikipedia/fr/thumb/c/c8/Twitter_Bird.svg/25px-Twitter_Bird.svg.png)](https://twitter.com/aoarevalot)
[![M](https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/LinkedIn_logo_initials.png/25px-LinkedIn_logo_initials.png)](https://www.linkedin.com/in/Alexoat76/)


## Acknowledgments :mega: 

### **`Holberton School`** (*providing guidance*)
	
This program was written as part of the curriculum for Holberton School.
Holberton School is a campus-based full-stack software engineering program
that prepares students for careers in the tech industry using project-based
peer learning. For more information,  please visit [this link](https://www.holbertonschool.com/).
