<p align="center">
<img src="https://img.shields.io/badge/LINUX-darkgreen.svg"/>
<img src="https://img.shields.io/badge/Shell-ligthgreen.svg"/>
<img src="https://img.shields.io/badge/Emacs-purple.svg"/>
<img src="https://img.shields.io/badge/Markdown-black.svg"/><br>	
</p>

---
# 0x13. Firewall

This project contains some tasks for learning about how to use ufw commands to configure firewalls on web servers.

<p align="center">
  <img width="400"  
        src="https://www.wisetechnet.com/wp-content/uploads/2020/05/HardwareFirewall.gif"
  >
</p>

# Getting Started :running:	
<div style="text-align: justify">

## Table of Contents
* [About](#about)
* [Resources](#resources-books)
* [Requirements](#requirements)
* [Files](#files-file_folder)
* [Tasks](#tasks)
* [Credits](#credits)

## About
	
The project contains some tasks for learning about how to use ufw commands to configure firewalls on web servers.

## Resources :books:
Read or watch:
	
[![M](https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Google_2015_logo.svg/80px-Google_2015_logo.svg.png)](https://www.google.com/search?q=what+is++a+firewall&sxsrf=ALiCzsaABqvZRqzgAEOahYg92ZQQ1sLG_A%3A1651777148662&ei=fB50YuKOKJKp_Qa3y7agDw&ved=0ahUKEwjivMaxhcn3AhWSVN8KHbelDfQQ4dUDCA4&uact=5&oq=what+is++a+firewall&gs_lcp=Cgdnd3Mtd2l6EAMyCggAEIAEEIcCEBQyBggAEAcQHjIGCAAQBxAeMgYIABAHEB4yBggAEAcQHjIGCAAQBxAeMgYIABAHEB4yBggAEAcQHjIGCAAQBxAeMgYIABAHEB46BwgAEEcQsAM6BwgAELADEEM6BAgAEApKBAhBGABKBAhGGABQqQpY3hRg2iRoAXABeACAAbUBiAHFA5IBAzAuM5gBAKABAcgBCsABAQ&sclient=gws-wiz)

[![M](https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Logo_of_YouTube_%282015-2017%29.svg/70px-Logo_of_YouTube_%282015-2017%29.svg.png)](https://www.youtube.com/results?search_query=what+is++a+firewall)

- [Web stack debugging](https://intranet.hbtn.io/concepts/68)
- [What is a firewall](https://intranet.hbtn.io/rltoken/QS5iHSDU_woydPRIb68sOw) 
	
## More Info	

As explained in the  web stack debugging guide  concept page, `telnet` is a very good tool to check if sockets
are open with `telnet IP PORT`. For example, if you want to check if port 22 is open on `web-02`:

```bash
$ telnet web-02.holberton.online 22
Trying 54.89.38.100...
Connected to web-02.holberton.online.
Escape character is '^]'.
SSH-2.0-OpenSSH_6.6.1p1 Ubuntu-2ubuntu2.8

Protocol mismatch.
Connection closed by foreign host.
$
```
We can see for this example that the connection is successful: `Connected to web-02.holberton.online.`

Now let’s try connecting to port 2222:

```bash
sylvain@ubuntu$ telnet web-02.holberton.online 2222
Trying 54.89.38.100...
^C
$
```
We can see that the connection never succeeds, so after some time I just use `ctrl+c` to kill the process.

This can be used not just for this exercise, but for any debugging situation where two pieces of software need
to communicate over sockets.

Note that the school network is filtering outgoing connections (via a network-based firewall), so you might not
be able to interact with certain ports on servers outside of the school network. To test your work on `web-01`,
please perform the test from outside of the school network, like from your `web-02` server. If you SSH into your
`web-02` server, the traffic will be originating from `web-02` and not from the school’s network, bypassing the
firewall.

## Warning!

Containers on demand cannot be used for this project (Docker container limitation)

Be very careful with firewall rules! For instance, if you ever deny port `22/TCP` and log out of your server,
you will not be able to reconnect to your server via SSH, and we will not be able to recover it. When you
install UFW, port 22 is blocked by default, so you should unblock it immediately before logging out of your
server.

### Installation :computer:
	
- Clone this repository: `https://github.com/Alexoat76/holberton-system_engineering-devops.git`	
- Access to directory: `cd 0x13-firewall`
- `Compile` accord to `instructions` of each task.

## Files :file_folder:

## Tasks

+ [X] 0\. **Block all incoming traffic but**

+ **[0-block_all_incoming_traffic_but](./0-block_all_incoming_traffic_but)**

Let’s install the `ufw` firewall and setup a few rules on `web-01`.

Requirements:

- The requirements below must be applied to `web-01` (feel free to do it on `lb-01` and `web-02`,
	but it won’t be checked)

- Configure `ufw` so that it blocks all incoming traffic, except the following TCP ports:
	- `22`  (SSH)
	- `443`  (HTTPS SSL)
	- `80`  (HTTP)

- Share the `ufw` commands that you used in your answer file

+ [X] 1\. **Port forwarding**

+ **[100-port_forwarding](./100-port_forwarding)**

Firewalls can not only filter requests, they can also forward them.

Requirements:
	- Configure `web-01` so that its firewall redirects port `8080/TCP` to port `80/TCP`.
		- Your answer file should be a copy of the `ufw` configuration file that you modified to make this happen

Terminal in `web-01`:

```bash
:~# netstat -lpn
Active Internet connections (only servers)
Proto Recv-Q Send-Q Local Address           Foreign Address         State       PID/Program name
tcp        0      0 0.0.0.0:80              0.0.0.0:*               LISTEN      2473/nginx
tcp        0      0 0.0.0.0:22              0.0.0.0:*               LISTEN      978/sshd
tcp6       0      0 :::80                   :::*                    LISTEN      2473/nginx
tcp6       0      0 :::22                   :::*                    LISTEN      978/sshd
udp        0      0 0.0.0.0:68              0.0.0.0:*                           594/dhclient
udp        0      0 0.0.0.0:54432           0.0.0.0:*                           594/dhclient
udp6       0      0 :::32563                :::*                                594/dhclient
Active UNIX domain sockets (only servers)
Proto RefCnt Flags       Type       State         I-Node   PID/Program name    Path
unix  2      [ ACC ]     SEQPACKET  LISTENING     7175     433/systemd-udevd   /run/udev/control
unix  2      [ ACC ]     STREAM     LISTENING     6505     1/init              @/com/ubuntu/upstart
unix  2      [ ACC ]     STREAM     LISTENING     8048     741/dbus-daemon     /var/run/dbus/system_bus_socket
unix  2      [ ACC ]     STREAM     LISTENING     8419     987/acpid           /var/run/acpid.socket
:~#
:~# grep listen /etc/nginx/sites-enabled/default
    listen 80 default_server;
		    listen [::]:80 default_server ipv6only=on;
				    # pass the PHP scripts to FastCGI server listening on 127.0.0.1:9000
						#   listen 8000;
						#   listen somename:8080;
						#   listen 443;
:~#
```

- My web server `nginx` is only listening on port `80`
- `netstat` shows that nothing is listening on `8080`

Terminal in `web-02`:

```bash
:~$ curl -sI web-01.holberton.online:80
HTTP/1.1 200 OK
Server: nginx/1.4.6 (Ubuntu)
Date: Tue, 07 Mar 2017 02:14:41 GMT
Content-Type: text/html
Content-Length: 612
Last-Modified: Tue, 04 Mar 2014 11:46:45 GMT
Connection: keep-alive
ETag: "5315bd25-264"
Accept-Ranges: bytes

:~$ curl -sI web-01.holberton.online:8080
HTTP/1.1 200 OK
Server: nginx/1.4.6 (Ubuntu)
Date: Tue, 07 Mar 2017 02:14:43 GMT
Content-Type: text/html
Content-Length: 612
Last-Modified: Tue, 04 Mar 2014 11:46:45 GMT
Connection: keep-alive
ETag: "5315bd25-264"
Accept-Ranges: bytes

:~$
```

I use curl to query `web-01.holberton.online`, and since my firewall is forwarding the ports, I get a `HTTP 200`
response on port `80/TCP` and also on port `8080/TCP`.

---

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
![Brand](https://assets.website-files.com/6105315644a26f77912a1ada/610540e8b4cd6969794fe673_Holberton_School_logo-04-04.svg)
