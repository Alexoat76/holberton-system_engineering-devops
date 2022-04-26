<p align="center">
<img src="https://img.shields.io/badge/LINUX-darkgreen.svg"/>
<img src="https://img.shields.io/badge/Shell-ligthgreen.svg"/>
<img src="https://img.shields.io/badge/Emacs-purple.svg"/>
<img src="https://img.shields.io/badge/Markdown-black.svg"/><br>	
</p>

---
# Web stack debugging #0

This project contains some tasks to learn what *`web stacks`* are and how to work in isolated containers. Also how to fix them. 

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
	
In this debugging series, `broken/bugged` webstacks will be given to you, the final goal is to come up with a 
Bash script that once executed, will bring the webstack to a working state. But before writing this Bash script, 
you should figure out what is going on and fix it manually.
	
## Background Context

The Webstack debugging series will train you in the art of debugging. Computers and software rarely work 
the way we want (that’s the “fun” part of the job!).

Being able to debug a webstack is essential for a Full-Stack Software Engineer, and it takes practice to be a 
master of it.

Let’s start with a very simple example. My server must:

* have a copy of the `/etc/passwd` file in `/tmp` 
* have a file named  `/tmp/isworking` containing the string `OK` 

Let’s pretend that without these 2 elements, my web application cannot work.
Let’s go through this example and fix the server.

```bash
:~$ docker run -d -ti ubuntu:14.04
Unable to find image 'ubuntu:14.04' locally
14.04: Pulling from library/ubuntu
34667c7e4631: Already exists
d18d76a881a4: Already exists
119c7358fbfc: Already exists
2aaf13f3eff0: Already exists
Digest: sha256:58d0da8bc2f434983c6ca4713b08be00ff5586eb5cdff47bcde4b2e88fd40f88
Status: Downloaded newer image for ubuntu:14.04
76f44c0da25e1fdf6bcd4fbc49f4d7b658aba89684080ea5d6e8a0d832be9ff9
:~$ docker ps
CONTAINER ID   IMAGE          COMMAND      CREATED          STATUS         PORTS     NAMES
76f44c0da25e   ubuntu:14.04   "/bin/bash"  13 seconds ago   Up 12 seconds            infallible_bhabha
:~$ docker exec -ti 76f44c0da25e /bin/bash
root@76f44c0da25e:/# ls /tmp/
root@76f44c0da25e:/# cp /etc/passwd /tmp/
root@76f44c0da25e:/# echo OK > /tmp/isworking
root@76f44c0da25e:/# ls /tmp/
isworking  passwd
root@76f44c0da25e:/#
:~$
```

Then my answer file would contain:

```bash
:~$ cat answerfile
#!/usr/bin/env bash
# Fix my server with these magic 2 lines
cp /etc/passwd /tmp/
echo OK > /tmp/isworking
:~$
```
Note that as cannot use interactive software such as `emacs` or `vi` in your Bash script, everything needs 
to be done from the command line (including file edition).

## Installing Docker
For this project you will be given a container which you can use to solve the task. *`If`* you would like to have 
Docker so that you can experiment with it and/or solve this problem locally, you can install it on your machine, 
your Ubuntu 14.04 VM, or your Ubuntu 16.04 VM if you upgraded.

- [Mac OS](https://intranet.hbtn.io/rltoken/k_pbInP8sVHkPWS-7bUqDQ) 
- [Windows](https://intranet.hbtn.io/rltoken/AYZe8xA3hfdHoDlXMJuNpQ) 
- [Ubuntu 14.04](https://intranet.hbtn.io/rltoken/ynOBcBBvuYZPm9lSHFNcoQ) 
 *`(Note that Docker for Ubuntu 14 is deprecated and you will have to make some adjustments to the instructions when installing)`*
- [Ubuntu 16.04](https://intranet.hbtn.io/rltoken/tTuEaxo5gzKq23ZvgPODnA) 

---
	
## Resources :books:
Read or watch:
	
[![M](https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Google_2015_logo.svg/80px-Google_2015_logo.svg.png)](https://www.google.com/search?q=Web+stack+debugging&oq=Web+stack+debugging&aqs=chrome..69i57j69i60j69i61l2.275357540j0j7&sourceid=chrome&ie=UTF-8)

[![M](https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Logo_of_YouTube_%282015-2017%29.svg/70px-Logo_of_YouTube_%282015-2017%29.svg.png)](https://www.youtube.com/results?search_query=web+stack+debugging+on+server)

- [Network basics](https://intranet.hbtn.io/concepts/33) 
- [Docker](https://intranet.hbtn.io/concepts/65) 
- [Web stack debugging](https://intranet.hbtn.io/concepts/68) 	

*`man or help:`*
- `curl` 

## Requirements
### General
- Allowed editors: `vi`, `vim`, `emacs` 
- All files will be interpreted on Ubuntu 14.04 LTS
- All files should end with a new line
- A `README.md` file, at the root of the folder of the project, is mandatory
- All Bash script files must be executable
- The Bash scripts must pass `Shellcheck` without any error
- The Bash scripts must run without error
- The first line of all Bash scripts should be exactly `#!/usr/bin/env bash` 
- The second line of all Bash scripts should be a comment explaining what is the script doing

## More Info
### Installation :computer:
	
- Clone this repository: `https://github.com/Alexoat76/holberton-system_engineering-devops.git`	
- Access to directory: `cd 0x0D-web_stack_debugging_0`
- `Compile` accord to `instructions` of each task.

## Files :file_folder:

## Tasks

+ [x] 0\. **Give me a page!**

+ **[0-give_me_a_page](./0-give_me_a_page)**

Be sure to read the  Docker  concept page

In this first debugging project, you will need to get  [Apache](https://intranet.hbtn.io/rltoken/B4vOap4dPNKxdZzBbepK7Q) 
  to run on the container and to return a page containing *`Hello Holberton`*  when querying the root of it.

Example:
```bash
:~$ docker run -p 8080:80 -d -it holbertonschool/265-0
47ca3994a4910bbc29d1d8925b1c70e1bdd799f5442040365a7cb9a0db218021
:~$ docker ps
CONTAINER ID        IMAGE                   COMMAND       CREATED          STATUS         PORTS                  NAMES
47ca3994a491        holbertonschool/265-0   "/bin/bash"   3 seconds ago    Up 2 seconds   0.0.0.0:8080->80/tcp   vigilant_tesla
:~$ curl 0:8080
curl: (52) Empty reply from server
:~$
```
Here we can see that after starting my Docker container, I `curl` the port `8080` mapped to the Docker 
container port `80`, it does not return a page but an error message. Note that you might also get the error 
message `curl: (52) Empty reply from server`.

```
:~$ curl 0:8080
Hello Holberton
:~$
``` 
	
After connecting to the container and fixing whatever needed to be fixed (here is your mission), you can see 
that curling port 80 return a page that contains `Hello Holberton`. Paste the command(s) you used to fix the 
issue in your answer file.
	
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
