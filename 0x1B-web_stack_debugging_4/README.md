<p align="center">
<img src="https://img.shields.io/badge/LINUX-darkgreen.svg"/>
<img src="https://img.shields.io/badge/Shell-ligthgreen.svg"/>
<img src="https://img.shields.io/badge/Emacs-purple.svg"/>
<img src="https://img.shields.io/badge/Markdown-black.svg"/><br>	
</p>

---
# 0x17. Web stack debugging #3

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

## Requirements
### General
- All files will be interpreted on Ubuntu 14.04 LTS
- All files should end with a new line
- A `README.md` file at the root of the folder of the project is mandatory
- The Puppet manifests must pass `puppet-lint` version 2.1.1 without any errors
- The Puppet manifests must run without error
- The Puppet manifests first line must be a comment explaining what the Puppet manifest is about
- The Puppet manifests files must end with the extension `.pp` 
- Files will be checked with Puppet v3.4
	
[![js-Puppet-style](https://img.shields.io/badge/style%20guide-Puppet-brightgreen.svg)](http://puppet-lint.com/)
	
## More Info	

### Install puppet-lint

- ` $ apt-get install -y ruby`
- ` $ gem install puppet-lint -v 2.1.1` 
	
### Installation :computer:
	
- Clone this repository: `https://github.com/Alexoat76/holberton-system_engineering-devops.git`	
- Access to directory: `cd 0x17-web_stack_debugging_3`
- `Compile` accord to `instructions` of each task.

## Files :file_folder:

## Tasks

+ [X] 0\. **Strace is your friend**

+ **[0-strace_is_your_friend.pp](./0-strace_is_your_friend.pp)**

Using `strace`, find out why Apache is returning a 500 error. Once you find the issue, fix it and then automate it
using Puppet (instead of using Bash as you were previously doing).

Hint:
- `strace` can attach to a current running process
- Use [tmux](https://intranet.hbtn.io/rltoken/4KkxME6-3aY9fgfok6HNFA)
 to run [strace](https://intranet.hbtn.io/rltoken/OUc10nTtuZG65adFVbkYag)
  in one window and `curl` in another one.

Requirements:
- The `0-strace_is_your_friend.pp` file must contain Puppet code
- You can use whatever Puppet resource type you want for you fix

Example:
```bash
:~# curl -sI 127.0.0.1
HTTP/1.0 500 Internal Server Error
Date: Fri, 24 Mar 2017 07:32:16 GMT
Server: Apache/2.4.7 (Ubuntu)
X-Powered-By: PHP/5.5.9-1ubuntu4.21
Connection: close
Content-Type: text/html

:~# puppet apply 0-strace_is_your_friend.pp
Notice: Compiled catalog for e514b399d69d.ec2.internal in environment production in 0.02 seconds
Notice: /Stage[main]/Main/Exec[fix-wordpress]/returns: executed successfully
Notice: Finished catalog run in 0.08 seconds
:~# curl -sI 127.0.0.1:80
:~#
HTTP/1.1 200 OK
Date: Fri, 24 Mar 2017 07:11:52 GMT
Server: Apache/2.4.7 (Ubuntu)
X-Powered-By: PHP/5.5.9-1ubuntu4.21
Link: <http://127.0.0.1/?rest_route=/>; rel="https://api.w.org/"
Content-Type: text/html; charset=UTF-8

:~# curl -s 127.0.0.1:80 | grep Holberton
<title>Holberton &#8211; Just another WordPress site</title>
<link rel="alternate" type="application/rss+xml" title="Holberton &raquo; Feed" href="http://127.0.0.1/?feed=rss2" />
<link rel="alternate" type="application/rss+xml" title="Holberton &raquo; Comments Feed" href="http://127.0.0.1/?feed=comments-rss2" />
        <div id="wp-custom-header" class="wp-custom-header"><img src="http://127.0.0.1/wp-content/themes/twentyseventeen/assets/images/header.jpg" width="2000" height="1200" alt="Holberton" /></div>  </div>
				                            <h1 class="site-title"><a href="http://127.0.0.1/" rel="home">Holberton</a></h1>
																		        <p>Yet another bug by a Holberton student</p>
																						:~#

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
