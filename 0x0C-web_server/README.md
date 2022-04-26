<p align="center">
<img src="https://img.shields.io/badge/LINUX-darkgreen.svg"/>
<img src="https://img.shields.io/badge/Shell-ligthgreen.svg"/>
<img src="https://img.shields.io/badge/Emacs-purple.svg"/>
<img src="https://img.shields.io/badge/Markdown-black.svg"/><br>	
</p>

---
# 0x0C. Web server

This project contains some tasks for learning how to *`web servers`* work. Additionally, how to a basic configuration of the server using *`Nginx`*.

<p align="center">
  <img width="400"  
        src="https://www.vargonen.com/blog/wp-content/uploads/2020/04/net-framework-versiyon.jpg"
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
	
The project contains some tasks for learning how to how to *`web servers`* work. Additionally, how to a basic configuration of the server using *`Nginx`*.

## Resources :books:
Read or watch:
	
[![M](https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Google_2015_logo.svg/80px-Google_2015_logo.svg.png)](https://www.google.com/search?q=web+server+configuration&oq=web+server+configuration&aqs=chrome..69i57j0i512l9.10973j0j15&sourceid=chrome&ie=UTF-8)

[![M](https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Logo_of_YouTube_%282015-2017%29.svg/70px-Logo_of_YouTube_%282015-2017%29.svg.png)](https://www.youtube.com/results?search_query=web+server+configuration+in+linux)

- [How the web works](https://intranet.hbtn.io/rltoken/4tRRzyyETAySzU-bgNGLSw) 
- [Nginx](https://intranet.hbtn.io/rltoken/H9OfhUnBDdxV-QQnIucMlA) 
- [How to Configure Nginx](https://intranet.hbtn.io/rltoken/wePwmjbJDgJZO7YPvffWxQ) 

*`Child process concept page`*
- [Root and sub domain](https://intranet.hbtn.io/rltoken/S2JO8E1CftLXOgvCfYf78A) 
- [HTTP requests](https://intranet.hbtn.io/rltoken/C9s3U62JbiOAvn9WCoxKsA) 
- [HTTP redirection](https://intranet.hbtn.io/rltoken/kI4vRQ6vc45Wfbdo3UD8Lw) 
- [Not found HTTP response code](https://intranet.hbtn.io/rltoken/5UvC588x2hZR7dm6eRFPoQ) 
- [Logs files on Linux](https://intranet.hbtn.io/rltoken/bkqQ72HZVAV65G8nB503Pw) 

*`For reference:`*
- [RFC 7231 (HTTP/1.1)](https://intranet.hbtn.io/rltoken/Ip0atFgh-X8dcQxQdUyVUA) 
- [RFC 7540 (HTTP/2)](https://intranet.hbtn.io/rltoken/cwfqkSHy98XGvyezL5KIIA) 

*`man or help:`*
- `scp` 
- `curl`
- What is the main role of a web server
- What is a child process
- Why web servers usually have a parent process and child processes
- What are the main *`HTTP requests`*

*`DNS`*
- What DNS stands for
- What is DNS main role
*`DNS Record Types`*
- `A` 
- `CNAME` 
- `TXT` 
- `MX` 

## Requirements
### General
- Allowed editors: `vi`, `vim`, `emacs` 
- All files will be interpreted on Ubuntu 20.04 LTS
- All files should end with a new line
- A `README.md` file, at the root of the folder of the project, is mandatory
- All Bash script files must be executable
- The Bash script must pass `Shellcheck` (version `0.3.7`) without any error
- The first line of all Bash scripts should be exactly ` #!/usr/bin/env bash` 
- The second line of all your Bash scripts should be a comment explaining what is the script doing
- Don’t use *`systemctl`* for restarting a process

## More Info
### Installation :computer:
	
- Clone this repository: `https://github.com/Alexoat76/holberton-system_engineering-devops.git`	
- Access to directory: `cd 0x0C-web_server`
- `Compile` accord to `instructions` of each task.

## Files :file_folder:
	
## Tests :heavy_check_mark:

+ **[tests](./tests)**: Folder of test files. Provided by Holberton School.
		
---

## Tasks

+ [x] 0\. **Transfer a file to your server**

+ **[0-transfer_file](./0-transfer_file)**

* Write a Bash script that transfers a file from our client to a server:
 * Requirements:
	- Accepts 4 parameters
		* The path to the file to be transferred
		* The IP of the server we want to transfer the file to
		* The username *`scp`* connects with
		* The path to the SSH private key that *`scp`* uses
	- Display *`Usage: 0-transfer_file PATH_TO_FILE IP USERNAME PATH_TO_SSH_KEY`* if less than 4 parameters passed
	- *`scp`*  must transfer the file to the user home directory `~/` 
	- Strict host key checking must be disabled when using *`scp`*

Example:
```bash
$ ./0-transfer_file
Usage: 0-transfer_file PATH_TO_FILE IP USERNAME PATH_TO_SSH_KEY
$
$ ssh ubuntu@8.8.8.8 -i /vagrant/sylvain 'ls ~/'
afile
$ 
$ touch some_page.html
$ ./0-transfer_file some_page.html 8.8.8.8 sylvain /vagrant/private_key
some_page.html                                     100%   12     0.1KB/s   00:00
$ ssh ubuntu@8.8.8.8 -i /vagrant/private_key 'ls ~/'
afile
some_page.html
$
```
In this example, I:
- remotely execute the `ls ~/` command via `ssh` to see what `~/` contains
- create a file named `some_page.html` 
- execute my `0-transfer_file` script
- remotely execute the `ls ~/` command via `ssh` to see that the file `some_page.html` has been successfully transferred

That is one way of publishing your website pages to your server.

---

+ [x] 1\. **Install nginx web server**

+ **[1-install_nginx_web_server](./1-install_nginx_web_server)**

***Readme***:
***[-y on apt-get command](https://intranet.hbtn.io/rltoken/qU2tVilKLygFZcRpEWD3lw)***

Web servers are the piece of software generating and serving HTML pages, let’s install one!

* Requirements:
	- Install *`nginx`* on your *`web-01`* server
	- Nginx should be listening on port 80
	- When querying ***Nginx*** at its root `/` with a *GET request* (requesting a page) using `curl`, 
		it must return a page that contains the string *`Hello World`* 
	- As an answer file, write a Bash script that configures a new Ubuntu machine to respect above 
		requirements (this script will be run on the server itself)
	- Don’t use *`systemctl`* for restarting `nginx`

***Server terminal***:
```bash
$ ./1-install_nginx_web_server > /dev/null 2>&1
root@sy-web-01$ 
root@sy-web-01$ curl localhost
Hello World!
root@sy-web-01$ 
```
***Local terminal***:
```bash
$ curl 34.198.248.145/
Hello World!
$ curl -sI 34.198.248.145/
HTTP/1.1 200 OK
Server: nginx/1.4.6 (Ubuntu)
Date: Tue, 21 Feb 2017 23:43:22 GMT
Content-Type: text/html
Content-Length: 30
Last-Modified: Tue, 21 Feb 2017 07:21:32 GMT
Connection: keep-alive
ETag: "58abea7c-1e"
Accept-Ranges: bytes
$
```

In this example `34.198.248.145` is the IP of my `web-01` server. If you want to query the Nginx that is locally installed 
on your server, you can use `curl 127.0.0.1`.
If things are not going as expected, make sure to check out Nginx logs, they can be found in `/var/log/`.

---
 
+ [x] 2\. **Setup a domain name**

+ **[2-setup_a_domain_name](./2-setup_a_domain_name)**

[.TECH Domains](https://intranet.hbtn.io/rltoken/yRrwiHrS15iQQZku72p0aQ) 
  is one of the top domain providers. They are known for the stability and quality of their DNS hosting 
solution. We partnered with .TECH Domains so that you can learn about DNS.

.TECH Domains worked with domain name registrars to give you access to a free domain name for a year. Please get the 
promo code in your  [tools space](https://intranet.hbtn.io/rltoken/b-Y81kiPBFJ_6wxJaSmBgQ) 
 . Feel free to drop a thank you tweet for  [.TECH Domains](https://intranet.hbtn.io/rltoken/d9XjYlM-CqTRHJEcaKpcVQ).

Provide the domain name in your answer file.

* Requirement:	
	- provide the domain name only (example: `foobar.tech`), no subdomain (example: `www.foobar.tech`)
	- configure your DNS records with an A entry so that your root domain points to your `web-01` IP address **Warning: 
		the propagation of your records can take time (~1-2 hours)**

Example:
```bash
$ cat 2-setup_a_domain_name
myschool.tech
$
$ dig myschool.tech

; <<>> DiG 9.10.6 <<>> myschool.tech
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 26785
;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 512
;; QUESTION SECTION:
;myschool.tech.     IN  A

;; ANSWER SECTION:
myschool.tech.  7199    IN  A   184.72.193.201

;; Query time: 65 msec
;; SERVER: 8.8.8.8#53(8.8.8.8)
;; WHEN: Fri Aug 02 09:44:36 PDT 2019
;; MSG SIZE  rcvd: 65

sylvain@ubuntu$

```
When your domain name is setup, please verify the Registrar here:  [https://whois.whoisxmlapi.com/](https://intranet.hbtn.io/rltoken/s8vsjayVUHJza59GXtuzpw) 
   and you must see in the JSON response: `"registrarName": "Dotserve Inc"` 

---

+ [x] 3\. **Redirection**

+ **[3-redirection](./3-redirection)**

	* [Replace a line with multiple lines with sed](https://intranet.hbtn.io/rltoken/Afg1zCifjmIygL1se0ghhg) 

Configure your Nginx server so that `/redirect_me` is redirecting to another page.

* Requirements:
	- The redirection must be a ***“301 Moved Permanently”***
	- The answer file should be a Bash script containing commands to automatically configure a Ubuntu machine to 
		respect above requirements
	- Using `1-install_nginx_web_server`, write `3-redirection` so that it configures a brand new 
		Ubuntu machine to the requirements asked in this task

Example:
```bash
$ curl -sI 34.198.248.145/redirect_me/
HTTP/1.1 301 Moved Permanently
Server: nginx/1.4.6 (Ubuntu)
Date: Tue, 21 Feb 2017 21:36:04 GMT
Content-Type: text/html
Content-Length: 193
Connection: keep-alive
Location: https://www.youtube.com/watch?v=QH2-TGUlwu4

$
```
--- 

+ [x] 4\. **Not found page 404**

+ **[4-not_found_page_404](./4-not_found_page_404)**

Configure the *`Nginx`* server to have a custom 404 page that contains the string `Ceci n'est pas une page`.

* Requirements:
	- The page must return an HTTP 404 error code
	- The page must contain the string `Ceci n'est pas une page` 
	- Using what you did with `3-redirection`, write `4-not_found_page_404` so that it configures a brand new Ubuntu 
			machine to the requirements asked in this task

Example:
```bash
$ curl -sI 34.198.248.145/xyz
HTTP/1.1 404 Not Found
Server: nginx/1.4.6 (Ubuntu)
Date: Tue, 21 Feb 2017 21:46:43 GMT
Content-Type: text/html
Content-Length: 26
Connection: keep-alive
ETag: "58acb50e-1a"

$ curl 34.198.248.145/xyzfoo
Ceci n'est pas une page

$
```
---

+ [x] 5\. **Design a beautiful 404 page**

+ **[5-design_a_beautiful_404_page](./5-design_a_beautiful_404_page)**

Some of my favorites:
- [Digital Ocean](https://intranet.hbtn.io/rltoken/BcOQZUPzoF6sfWd28JAOmA) 
- [GitHub](https://intranet.hbtn.io/rltoken/i56pau9DIG49cBUMBwEcPg) 
- [Lego](https://intranet.hbtn.io/rltoken/cm7-ZqHoxVdLwhOc1XGwyg) 
- [Blizzard](https://intranet.hbtn.io/rltoken/oJ8wrqP9rgPAc1Qzr-q7kg) 
- [StickerMule](https://intranet.hbtn.io/rltoken/apZ3b5W6-ms9a49_V0e8cg) 

---

+ [x] 6\. **Install Nginx web server (w/ Puppet)

+ **[7-puppet_install_nginx_web_server.pp](./7-puppet_install_nginx_web_server.pp)**

Time to practice configuring your server with Puppet! Just as you did before, we’d like you to install and configure 
an Nginx server using Puppet instead of Bash. To save time and effort, you should also include resources in your manifest to 
perform a 301 redirect when querying /redirect_me.

* Requirements:
	- Nginx should be listening on port 80
	- When querying Nginx at its root `/` with a GET request (requesting a page) using `curl`, it must return a page that 
		contains the string `Hello World` 
	- The redirection must be a “301 Moved Permanently”
	- Your answer file should be a Puppet manifest containing commands to automatically configure an Ubuntu machine 
		to respect above requirements
	
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
