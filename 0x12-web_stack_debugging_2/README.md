<p align="center">
<img src="https://img.shields.io/badge/LINUX-darkgreen.svg"/>
<img src="https://img.shields.io/badge/Shell-ligthgreen.svg"/>
<img src="https://img.shields.io/badge/Emacs-purple.svg"/>
<img src="https://img.shields.io/badge/Markdown-black.svg"/><br>	
</p>

---
# 0x12. Web stack debugging #2

This project contains some tasks for continue learning about *`broken/bugged`* webstacks in isolated containers, and tasked with fixing the web stack to a working state. For each task, used a script *`automating`* the commands necessary to *`fix`* the web stack.

<p align="center">
  <img width="400"  
        src="https://c.tenor.com/zKHDose_0kYAAAAM/code-debugging.gif"
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
	
The project contains some tasks for continue learning about broken/bugged webstacks in isolated containers, and tasked with fixing the web stack to a working state.

## Resources :books:
Read or watch:
	
[![M](https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Google_2015_logo.svg/80px-Google_2015_logo.svg.png)](https://www.google.com/search?q=Web+stack+debugging&oq=Web+stack+debugging&aqs=chrome..69i57j69i60l3.4512j0j15&sourceid=chrome&ie=UTF-8)

[![M](https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Logo_of_YouTube_%282015-2017%29.svg/70px-Logo_of_YouTube_%282015-2017%29.svg.png)](https://www.youtube.com/results?search_query=web+stack+debugging+on+server)

- [Web stack debugging](https://intranet.hbtn.io/concepts/68)

## Requirements
### General

- All your files will be interpreted on Ubuntu 14.04 LTS
- All your files should end with a new line
- A README.md file at the root of the folder of the project is mandatory
- All your Bash script files must be executable
- Your Bash scripts must pass `Shellcheck` without any error
- Your Bash scripts must run without error
- The first line of all your Bash scripts should be exactly `#!/usr/bin/env bash`
- The second line of all your Bash scripts should be a comment explaining what is the script doing


### Installation :computer:
	
- Clone this repository: `https://github.com/Alexoat76/holberton-system_engineering-devops.git`	
- Access to directory: `cd 0x12-web_stack_debugging_2`
- `Compile` accord to `instructions` of each task.

## Files :file_folder:

## Tasks

+ [X] 0\. **Run software as another user**

+ **[0-iamsomeoneelse](./0-iamsomeoneelse)**

The user `root` is, on Linux, the “superuser”. It can do anything it wants, that’s a good and bad thing. A good
practice is that one should never be logged in the `root` user, as if you fat finger a command and for example
run `rm -rf /`, there is no comeback. That’s why it is preferable to run as a privileged user, meaning that the
user also has the ability to perform tasks that the `root` user can do, just need to use a specific command that you
need to discover.

For the containers that you are given in this project as well as the checker, everything is run under the `root`
user, which has the ability to run anything as another user.

Requirements:

- write a Bash script that accepts one argument
- the script should run the `whoami` command under the user passed as an argument
- make sure to try your script by passing different users

Example:

```bash
:~# whoami
root
:~# ./0-iamsomeoneelse www-data
www-data
:~# whoami
root
:~#
```
---

+ [X] 1\. **Run Nginx as Nginx**

+ **[1-run_nginx_as_nginx](./1-run_nginx_as_nginx)**

The `root` user is a superuser that can do anything on a Unix machine, the top administrator. Security wise, you
must do everything that you can to prevent an attacker from logging in as *`root`*. With this in mind, it’s a good
practice not to run your web servers as *`root`* (which is the default for most configurations) and instead run the
process as the less privileged *`nginx`* user instead. This way, if a hacker does find a security issue that allows
them to break-in to your server, the impact is limited by the permissions of the *`nginx`* user.
Fix this container so that Nginx is running as the *`nginx`* user.

Requirements:

- `nginx` must be running as *`nginx`* user
- `nginx` must be listening on all active IPs on port *`8080`*
- Cannot use *`apt-get remove`*
- Write a Bash script that configures the container to fit the above requirements

After debugging:

```bash
:~# ps auxff | grep ngin[x]
nginx      884  0.0  0.0  77360  2744 ?        Ss   19:16   0:00 nginx: master process /usr/sbin/nginx
nginx      885  0.0  0.0  77712  2772 ?        S    19:16   0:00  \_ nginx: worker process
nginx      886  0.0  0.0  77712  3180 ?        S    19:16   0:00  \_ nginx: worker process
nginx      887  0.0  0.0  77712  3180 ?        S    19:16   0:00  \_ nginx: worker process
nginx      888  0.0  0.0  77712  3208 ?        S    19:16   0:00  \_ nginx: worker process
:~#
:~# nc -z 0 8080 ; echo $?
0
:~#
```
---

+ [X] 2\. **7 lines or less**

+ **[100-fix_in_7_lines_or_less](./100-fix_in_7_lines_or_less)**

Using what you did for task #1, make your fix short and sweet.

Requirements:

* The Bash script must be 7 lines long or less
* There must be a new line at the end of the file
* Respect Bash script requirements
* Cannot use `;`
* Cannot use `&&`
* Cannot use `wget`
* Cannot execute the previous answer file (Do not include the name of the previous script in this one)

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
