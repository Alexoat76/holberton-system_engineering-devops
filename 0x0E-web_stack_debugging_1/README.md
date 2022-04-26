<p align="center">
<img src="https://img.shields.io/badge/LINUX-darkgreen.svg"/>
<img src="https://img.shields.io/badge/Shell-ligthgreen.svg"/>
<img src="https://img.shields.io/badge/Emacs-purple.svg"/>
<img src="https://img.shields.io/badge/Markdown-black.svg"/><br>	
</p>

---
# 0x0E. Web stack debugging #1

This project contains some tasks for learning

<p align="center">
  <img width="200"  
        src="https://media.istockphoto.com/vectors/magnifier-searching-malware-bug-computer-internet-error-virus-concept-vector-id1063078150?k=20&m=1063078150&s=612x612&w=0&h=vdBM80cB4rIA_ThCu-XkXBJXLbjem2H59nExBithmjI="
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
	
The project contains some tasks for learning about 

## Resources :books:
Read or watch:
	
[![M](https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Google_2015_logo.svg/80px-Google_2015_logo.svg.png)](https://www.google.com/search?q=ssh&oq=ssh&aqs=chrome..69i57j0i512l9.3283j0j15&sourceid=chrome&ie=UTF-8)

[![M](https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Logo_of_YouTube_%282015-2017%29.svg/70px-Logo_of_YouTube_%282015-2017%29.svg.png)](https://www.youtube.com/results?search_query=ssh)

- [Network basics](https://intranet.hbtn.io/concepts/33) 
- [Web stack debugging](https://intranet.hbtn.io/concepts/68) 

## Requirements
### General
- Allowed editors: `vi`, `vim`, `emacs` 
- All files will be interpreted on Ubuntu 20.04 LTS
- All files should end with a new line
- A `README.md` file at the root of the folder of the project is mandatory
- All Bash script files must be executable
- The Bash scripts must pass `Shellcheck` without any error
- The Bash scripts must run without error
- The first line of all your Bash scripts should be exactly `#!/usr/bin/env bash` 
- The second line of all Bash scripts should be a comment explaining what is the script doing
- You are not allowed to use `wget`
	
### Installation :computer:
	
- Clone this repository: `https://github.com/Alexoat76/holberton-system_engineering-devops.git`	
- Access to directory: `cd 0x0E-web_stack_debugging_1`
- `Compile` accord to `instructions` of each task.

## Files :file_folder:
		
---

## Tasks

+ [X] 0\. **Nginx likes port 80**

+ **[0-nginx_likes_port_80](./0-nginx_likes_port_80)**

Using your debugging skills, find out what’s keeping your Ubuntu container’s Nginx installation from listening 
on port `80`. Feel free to install whatever tool you need, start and destroy as many containers as you need to 
debug the issue. Then, write a Bash script with the minimum number of commands to automate your fix.

Requirements:

- Nginx must be running, and listening on port `80` of all the server’s active IPv4 IPs 
- Write a Bash script that configures a server to the above requirements

```bash
root@966c5664b21f:/# curl 0:80
curl: (7) Failed to connect to 0 port 80: Connection refused
root@966c5664b21f:/#
root@966c5664b21f:/# ./0-nginx_likes_port_80 > /dev/null 2&>1
root@966c5664b21f:/#
root@966c5664b21f:/# curl 0:80
<!DOCTYPE html>
<html>
<head>
<title>Welcome to nginx!</title>
<style>
    body {
        width: 35em;
        margin: 0 auto;
        font-family: Tahoma, Verdana, Arial, sans-serif;
    }
</style>
</head>
<body>
<h1>Welcome to nginx!</h1>
<p>If you see this page, the nginx web server is successfully installed and
working. Further configuration is required.</p>

<p>For online documentation and support please refer to
<a href="http://nginx.org/">nginx.org</a>.<br/>
Commercial support is available at
<a href="http://nginx.com/">nginx.com</a>.</p>

<p><em>Thank you for using nginx.</em></p>
</body>
</html>
root@966c5664b21f:/#
```
---

+ [X] 1\. **Make it sweet and short**

+ **[1-debugging_made_short](./1-debugging_made_short)**

Using what you did for task #0, make your fix short and sweet.
Requirements:
	- The Bash script must be 5 lines long or less
	- There must be a new line at the end of the file
	- Respect usual Bash script requirements
	- Cannot use  ` ; ` 
	- Cannot use  ` && ` 
	- Cannot use  ` wget ` 
	- Cannot execute your previous answer file (Do not include the name of the previous script in this one)
	- `service` (init) must say that `nginx` is not running ← for real

```bash
root@966c5664b21f:/# curl 0:80
curl: (7) Failed to connect to 0 port 80: Connection refused
root@966c5664b21f:/#
root@966c5664b21f:/# cat -e 1-debugging_made_short | wc -l
5
root@966c5664b21f:/# ./1-debugging_made_short
root@966c5664b21f:/# curl 0:80
<!DOCTYPE html>
<html>
<head>
<title>Welcome to nginx!</title>
<style>
    body {
        width: 35em;
        margin: 0 auto;
        font-family: Tahoma, Verdana, Arial, sans-serif;
    }
</style>
</head>
<body>
<h1>Welcome to nginx!</h1>
<p>If you see this page, the nginx web server is successfully installed and
working. Further configuration is required.</p>

<p>For online documentation and support please refer to
<a href="http://nginx.org/">nginx.org</a>.<br/>
Commercial support is available at
<a href="http://nginx.com/">nginx.com</a>.</p>

<p><em>Thank you for using nginx.</em></p>
</body>
</html>
root@966c5664b21f:/#
root@966c5664b21f:/# service nginx status
 * nginx is not running
root@966c5664b21f:/# 
```
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
