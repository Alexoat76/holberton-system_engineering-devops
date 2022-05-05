<p align="center">
<img src="https://img.shields.io/badge/LINUX-darkgreen.svg"/>
<img src="https://img.shields.io/badge/Shell-ligthgreen.svg"/>
<img src="https://img.shields.io/badge/Emacs-purple.svg"/>
<img src="https://img.shields.io/badge/Markdown-black.svg"/><br>	
</p>

---
# 0x1B. Web stack debugging #4

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
	
[![M](https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Google_2015_logo.svg/80px-Google_2015_logo.svg.png)](https://www.google.com/search?q=ssh&oq=ssh&aqs=chrome..69i57j0i512l9.3283j0j15&sourceid=chrome&ie=UTF-8)

[![M](https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Logo_of_YouTube_%282015-2017%29.svg/70px-Logo_of_YouTube_%282015-2017%29.svg.png)](https://www.youtube.com/results?search_query=ssh)

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
- Access to directory: `cd 0x1B-web_stack_debugging_4`
- `Compile` accord to `instructions` of each task.

## Files :file_folder:

## Tasks

+ [X] 0\. **Sky is the limit, let's bring that limit higher**

+ **[0-the_sky_is_the_limit_not.pp](./0-the_sky_is_the_limit_not.pp)**

In this web stack debugging task, we are testing how well our web server setup featuring Nginx is doing under 
pressure and it turns out it’s not doing well: we are getting a huge amount of failed requests.
 
For the benchmarking, we are using ApacheBench which is a quite popular tool in the industry. It allows you to 
simulate HTTP requests to a web server. In this case, I will make 2000 requests to my server with 100 requests 
at a time. We can see that 943 requests failed, let’s fix our stack so that we get to 0, and remember that when 
something is going wrong, logs are your best friends!

```bash
:/# ab -c 100 -n 2000 localhost/
This is ApacheBench, Version 2.3 <$Revision: 1528965 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking localhost (be patient)
Completed 200 requests
Completed 400 requests
Completed 600 requests
Completed 800 requests
Completed 1000 requests
Completed 1200 requests
Completed 1400 requests
Completed 1600 requests
Completed 1800 requests
Completed 2000 requests
Finished 2000 requests

Server Software:        nginx/1.4.6
Server Hostname:        localhost
Server Port:            80

Document Path:          /
Document Length:        201 bytes

Concurrency Level:      100
Time taken for tests:   0.353 seconds
Complete requests:      2000
Failed requests:        943
   (Connect: 0, Receive: 0, Length: 943, Exceptions: 0)
Non-2xx responses:      1057
Total transferred:      1196526 bytes
HTML transferred:       789573 bytes
Requests per second:    5664.01 [#/sec] (mean)
Time per request:       17.655 [ms] (mean)
Time per request:       0.177 [ms] (mean, across all concurrent requests)
Transfer rate:          3309.15 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   1.1      0       8
Processing:     2   17   3.8     17      24
Waiting:        2   17   3.8     17      24
Total:          9   17   3.3     17      24

Percentage of the requests served within a certain time (ms)
  50%     17
  66%     19
  75%     20
  80%     20
  90%     21
  95%     23
  98%     23
  99%     23
 100%     24 (longest request)
:/#
:/# puppet apply 0-the_sky_is_the_limit_not.pp
Notice: Compiled catalog for 0a62aa706eb3.local in environment production in 0.01 seconds
Notice: /Stage[main]/Main/Exec[fix--for-nginx]/returns: executed successfully
Notice: Finished catalog run in 1.12 seconds
:/#
:/#
:/# ab -c 100 -n 2000 localhost/
This is ApacheBench, Version 2.3 <$Revision: 1528965 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking localhost (be patient)
Completed 200 requests
Completed 400 requests
Completed 600 requests
Completed 800 requests
Completed 1000 requests
Completed 1200 requests
Completed 1400 requests
Completed 1600 requests
Completed 1800 requests
Completed 2000 requests
Finished 2000 requests

Server Software:        nginx/1.4.6
Server Hostname:        localhost
Server Port:            80

Document Path:          /
Document Length:        612 bytes

Concurrency Level:      100
Time taken for tests:   0.301 seconds
Complete requests:      2000
Failed requests:        0
Total transferred:      1706000 bytes
HTML transferred:       1224000 bytes
Requests per second:    6650.99 [#/sec] (mean)
Time per request:       15.035 [ms] (mean)
Time per request:       0.150 [ms] (mean, across all concurrent requests)
Transfer rate:          5540.33 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    4   2.5      3      12
Processing:     2   11   5.2     10      31
Waiting:        1   10   5.2      8      29
Total:          5   15   5.2     14      31

Percentage of the requests served within a certain time (ms)
  50%     14
  66%     17
  75%     18
  80%     19
  90%     22
  95%     26
  98%     27
  99%     28
 100%     31 (longest request)
:/#
```
---

+ [X] 1\. **User limit**

+ **[1-user_limit.pp](./1-user_limit.pp)**

Change the OS configuration so that it is possible to login with the `holberton` user and open a file without any 
error message.

```bash
:~# su - holberton
-su: /etc/profile: Too many open files
-su: /home/holberton/.bash_profile: Too many open files
-su-4.3$ head /etc/passwd
-su: start_pipeline: pgrp pipe: Too many open files
root:x:0:0:root:/root:/bin/bash
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
sys:x:3:3:sys:/dev:/usr/sbin/nologin
sync:x:4:65534:sync:/bin:/bin/sync
games:x:5:60:games:/usr/games:/usr/sbin/nologin
man:x:6:12:man:/var/cache/man:/usr/sbin/nologin
lp:x:7:7:lp:/var/spool/lpd:/usr/sbin/nologin
mail:x:8:8:mail:/var/mail:/usr/sbin/nologin
news:x:9:9:news:/var/spool/news:/usr/sbin/nologin
-su-4.3$
-su-4.3$
-su-4.3$ logout
-su: /home/holberton/.bash_logout: Too many open files
-su: /etc/bash.bash_logout: Too many open files
:~#
:~#
:~# puppet apply 1-user_limit.pp
Notice: Compiled catalog for 079b7269ec1b.ec2.internal in environment production in 0.02 seconds
Notice: /Stage[main]/Main/Exec[change-os-configuration-for-holberton-user]/returns: executed successfully
Notice: Finished catalog run in 0.06 seconds
:~#
:~#
:~# su - holberton
holberton@079b7269ec1b:~$ head /etc/passwd
root:x:0:0:root:/root:/bin/bash
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
sys:x:3:3:sys:/dev:/usr/sbin/nologin
sync:x:4:65534:sync:/bin:/bin/sync
games:x:5:60:games:/usr/games:/usr/sbin/nologin
man:x:6:12:man:/var/cache/man:/usr/sbin/nologin
lp:x:7:7:lp:/var/spool/lpd:/usr/sbin/nologin
mail:x:8:8:mail:/var/mail:/usr/sbin/nologin
news:x:9:9:news:/var/spool/news:/usr/sbin/nologin
:~$
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
