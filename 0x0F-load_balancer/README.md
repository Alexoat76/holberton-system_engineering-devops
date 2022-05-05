<p align="center">
<img src="https://img.shields.io/badge/LINUX-darkgreen.svg"/>
<img src="https://img.shields.io/badge/Shell-ligthgreen.svg"/>
<img src="https://img.shields.io/badge/Emacs-purple.svg"/>
<img src="https://img.shields.io/badge/Markdown-black.svg"/><br>	
</p>

---
# 0x0F. Load balancer

This project contains some tasks for learning about the replicate of *`Nginx`* configuration the original server, and another to set up an *`HAproxy`* ***load balancer*** on to manage both web servers.

<p align="center">
  <img width="500"  
        src="https://thumbs.gfycat.com/FastSilverJay-max-1mb.gif"
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
	
This project contains some tasks for learning about the replicate of *`Nginx`* configuration the original server, and another to set up an *`HAproxy`* *load balancer* on to manage both web servers.

### Background Context
	
* 2 additional servers:
* **gc-[STUDENT_ID]-web-02-XXXXXXXXXX**
* **gc-[STUDENT_ID]-lb-01-XXXXXXXXXX**
	
Let’s improve our web stack so that there is  [redundancy](https://intranet.hbtn.io/rltoken/QiOC_I-8BeV4aNExIucC9Q) 
  for our web servers. This will allow us to be able to 
accept more traffic by doubling the number of web servers, and to make our infrastructure more reliable. If one 
web server fails, we will still have a second one to handle requests.

For this project, you will need to write Bash scripts to automate your work. All scripts must be designed to 
configure a brand new Ubuntu server to match the task requirements.
	
## Resources :books:
Read or watch:
	
[![M](https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Google_2015_logo.svg/80px-Google_2015_logo.svg.png)](https://www.google.com/search?q=load+balancer+nginx&source=lmns&bih=628&biw=1258&hl=en&sa=X&ved=2ahUKEwjzxNKum8L3AhVmXzABHSwaD1AQ_AUoAHoECAEQAA)

[![M](https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Logo_of_YouTube_%282015-2017%29.svg/70px-Logo_of_YouTube_%282015-2017%29.svg.png)](https://www.youtube.com/results?search_query=load+balancer+nginx)

- [Load balancer](https://intranet.hbtn.io/concepts/46) 
- [Web stack debugging](https://intranet.hbtn.io/concepts/68) 
- [Introduction to load-balancing and HAproxy](https://intranet.hbtn.io/rltoken/ngIXarEyu8jZwOL3Y30PLQ) 
- [HTTP header](https://intranet.hbtn.io/rltoken/v32JmcDrSiOnFBfqzXvs_Q) 
- [Debian/Ubuntu HAProxy packages](https://intranet.hbtn.io/rltoken/BXGrW_6ocecWaOJb7OK_WA) 
	
## Requirements
### General
- Allowed editors: `vi`, `vim`, `emacs` 
- All files will be interpreted on Ubuntu 16.04 LTS
- All files should end with a new line
- A `README.md`  file, at the root of the folder of the project, is mandatory
- All Bash script files must be executable
- The Bash script must pass `Shellcheck` (version `0.3.7`) without any error
- The first line of all your Bash scripts should be exactly `#!/usr/bin/env bash` 
- The second line of all Bash scripts should be a comment explaining what is the script doing
	
### Installation :computer:
	
- Clone this repository: `https://github.com/Alexoat76/holberton-system_engineering-devops.git`	
- Access to directory: `cd 0x0F-load_balancer`
- `Compile` accord to `instructions` of each task.

## Files :file_folder:
		
## Tasks

+ [x] 0\. **Double the number of webservers**

+ **[0-custom_http_response_header](./0-custom_http_response_header)**

In this first task you need to configure `web-02` to be identical to  `web-01`. Fortunately, you built a Bash script 
during your  [web server project](https://intranet.hbtn.io/rltoken/YygI112jB085j-4C3dRX2A) 
 , and they’ll now come in handy to easily configure `web-02`. Remember, always try to automate your work!

Since we’re placing our web servers behind a load balancer for this project, we want to add a custom Nginx 
response header. The goal here is to be able to track which web server is answering our HTTP requests, to 
understand and track the way a load balancer works. More in the coming tasks.

Requirements:

- Configure Nginx so that its HTTP response contains a custom header (on `web-01` and `web-02`)
	* The name of the custom HTTP header must be `X-Served-By` 
	* The value of the custom HTTP header must be the hostname of the server Nginx is running on

- Write `0-custom_http_response_header` so that it configures a brand new Ubuntu machine to the 
	requirements asked in this task
	* [Ignore](https://intranet.hbtn.io/rltoken/3AOvROMUNUrzxEWhli4GTw) 
[SC2154](https://intranet.hbtn.io/rltoken/i5f8DYX_rRYFz4hfbG_GJg) for `shellcheck` 

Example:

```bash
$ curl -sI 34.198.248.145 | grep X-Served-By
X-Served-By: 03-web-01
$ curl -sI 54.89.38.100 | grep X-Served-By
X-Served-By: 03-web-02
$
```
If server’s hostnames are not properly configured (`[STUDENT_ID]-web-01` and `[STUDENT_ID]-web-02`.), 
follow this [tutorial](https://intranet.hbtn.io/rltoken/h3tE_15RKe2QYWzPsjqNDA).
	
---

+ [x] 1\. **Install your load balancer**

+ **[1-install_load_balancer](./1-install_load_balancer)**

Install and configure HAproxy on your `lb-01` server.

Requirements:

- Configure HAproxy so that it send traffic to `web-01` and `web-02` 
- Distribute requests using a roundrobin algorithm
- Make sure that HAproxy can be managed via an init script
- Make sure that servers are configured with the right hostnames: `[STUDENT_ID]-web-01` and 
	`[STUDENT_ID]-web-02`. If not, follow this [tutorial](https://intranet.hbtn.io/rltoken/Tb9qeqRrtrO_b2uFpet9rw).
- For the answer file, write a Bash script that configures a new Ubuntu machine to respect above 
	requirements

Example:

```bash
$ curl -Is 54.210.47.110
HTTP/1.1 200 OK
Server: nginx/1.4.6 (Ubuntu)
Date: Mon, 27 Feb 2017 06:12:17 GMT
Content-Type: text/html
Content-Length: 30
Last-Modified: Tue, 21 Feb 2017 07:21:32 GMT
Connection: keep-alive
ETag: "58abea7c-1e"
X-Served-By: 03-web-01
Accept-Ranges: bytes

$ curl -Is 54.210.47.110
HTTP/1.1 200 OK
Server: nginx/1.4.6 (Ubuntu)
Date: Mon, 27 Feb 2017 06:12:19 GMT
Content-Type: text/html
Content-Length: 612
Last-Modified: Tue, 04 Mar 2014 11:46:45 GMT
Connection: keep-alive
ETag: "5315bd25-264"
X-Served-By: 03-web-02
Accept-Ranges: bytes

$
```
---

+ [x] 2\. **Add a custom HTTP header with Puppet**

+ **[2-puppet_custom_http_response_header.pp](./2-puppet_custom_http_response_header.pp)**

Just as in task #0, we’d like you to automate the task of creating a custom HTTP header response, but 
	with Puppet.

- The name of the custom HTTP header must be `X-Served-By` 
- The value of the custom HTTP header must be the hostname of the server Nginx is running on
- Write `2-puppet_custom_http_response_header.pp` so that it configures a brand new Ubuntu machine to 
	the requirements asked in this task.

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
