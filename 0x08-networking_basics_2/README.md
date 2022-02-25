![Brand](https://assets.website-files.com/6105315644a26f77912a1ada/610540e8b4cd6969794fe673_Holberton_School_logo-04-04.svg)

# 0x08. Networking basics #1
<div style="text-align: justify">
	
In this project, you should be continue to learn about `networking concepts`. Practice write Bash Script for learn OSI model, `LAN` and `WAN` networks, and `TCP/UDP` data transfer protocols.

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
	
[What is localhost](https://en.wikipedia.org/wiki/Localhost)</div>
<div style="text-align: justify">

[What is 0.0.0.0](https://en.wikipedia.org/wiki/0.0.0.0)</div>
<div style="text-align: justify">
	
[What is the hosts file](https://www.makeuseof.com/tag/modify-manage-hosts-file-linux/)</div>
	
[Netcat examples](https://www.thegeekstuff.com/2012/04/nc-command-examples/)</div>


### man or help:

`netstat`

`ping`

`ifconfig`
`telnet`

`nc`

`cut`

* What is localhost/127.0.0.1
* What is 0.0.0.0
* What is /etc/hosts
* How to display your machine’s active network interfaces
	
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
* Your Bash script must pass Shellcheck (version 0.7.0 via apt-get) without any errors

<div style="text-align: justify">
	
*The first line of all your Bash scripts should be exactly `#!/usr/bin/env bash`. </div>

<div style="text-align: justify">
	
*The second line of all your Bash scripts should be a comment explaining what is the script doing. 
<div style="text-align: justify">

*The checker is running on Docker, so make sure to read [this](https://web.archive.org/web/20171117023601/http://blog.jonathanargentiero.com/docker-sed-cannot-rename-etcsedl8ysxl-device-or-resource-busy/)
	
## Tasks :page_with_curl:

* **0. Change your home IP**
  	* [0-change_your_home_IP](./0-change_your_home_IP): Bash script that configures
  	an Ubuntu server as follows:
  		* `localhost` resolves to `127.0.0.2`
  		* `facebook.com` resolves to `8.8.8.8`

* **1. Show attached IPs**
  	* [1-show_attached_IPs](./1-show_attached_IPs): Bash script that displays all active IPv4
  	IP's on the machine.

* **2. Port listening on localhost**
  	* [100-port_listening_on_localhost](./100-port_listening_on_localhost): Bash script that
  	listens on port `98` on `localhost`.
	
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
