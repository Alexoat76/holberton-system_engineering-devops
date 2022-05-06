<p align="center">
<img src="https://img.shields.io/badge/LINUX-darkgreen.svg"/>
<img src="https://img.shields.io/badge/Shell-ligthgreen.svg"/>
<img src="https://img.shields.io/badge/Emacs-purple.svg"/>
<img src="https://img.shields.io/badge/Markdown-black.svg"/><br>	
</p>

---
# 0x10. HTTPS SSL

This project contains some tasks for learning about the importance of *`HTTPS`* and how it works. Also how to configured web servers with *`certbot`* certificate and *`HAproxy SSL termination`*.

<p align="center">
  <img width="250"  
        src="https://raleigh.teddslist.com/wp-content/uploads/2018/06/ssl-https-gif.gif"
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
	
This project contains some tasks for learning about the importance of *`HTTPS`* and how it works.

## Resources :books:
Read or watch:
	
[![M](https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Google_2015_logo.svg/80px-Google_2015_logo.svg.png)](https://www.google.com/search?q=What+is+SSL%2C+TLS+and+HTTPS&ei=8Xl0YpWQNeiLxc8Pju-ToAQ&ved=0ahUKEwjVzOvN3Mn3AhXoRfEDHY73BEQQ4dUDCA4&uact=5&oq=What+is+SSL%2C+TLS+and+HTTPS&gs_lcp=Cgdnd3Mtd2l6EAMyBQgAEIAEMgYIABAWEB5KBAhBGABKBAhGGABQAFjLDWDkEGgAcAF4AIABxwGIAaAEkgEDMC4zmAEAoAECoAEBwAEB&sclient=gws-wiz)

[![M](https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Logo_of_YouTube_%282015-2017%29.svg/70px-Logo_of_YouTube_%282015-2017%29.svg.png)](https://www.youtube.com/results?search_query=What+is+SSL%2C+TLS+and+HTTPS)

- [DNS](https://intranet.hbtn.io/concepts/12)
- [Web stack debugging](https://intranet.hbtn.io/concepts/68)
- [What is HTTPS?](https://intranet.hbtn.io/rltoken/pawxG_0c1o86psexBOikIw)
- [What are the 2 main elements that SSL is providing](https://intranet.hbtn.io/rltoken/jXCB9Hn-ALcP78kPMHtnSA)
- [HAProxy SSL termination on Ubuntu16.04](https://intranet.hbtn.io/rltoken/UkbvWfKF6ZAY_CUvlM32lA)
- [SSL termination](https://intranet.hbtn.io/rltoken/VFq2MQ9qHXw2Nb11tnWF6Q)
- [Bash function](https://intranet.hbtn.io/rltoken/16bxrQvaOSIywA_fHEdsiA) 

## Requirements
### General
* Allowed editors: `vi`, `vim`, `emacs`
* All files will be interpreted on Ubuntu 16.04 LTS
* All files should end with a new line
* A `README.md`  file, at the root of the folder of the project, is mandatory
* All Bash script files must be executable
* The Bash script must pass `Shellcheck` (version `0.3.7`) without any error
* The first line of all Bash scripts should be exactly `#!/usr/bin/env bash`
* The second line of all Bash scripts should be a comment explaining what is the script doing

	
### Installation :computer:
	
- Clone this repository: `https://github.com/Alexoat76/holberton-system_engineering-devops.git`	
- Access to directory: `cd 0x10-https_ssl`
- `Compile` accord to `instructions` of each task.

## Files :file_folder:

## Tasks

+ [X] 0\. **World wide web**

+ **[0-world_wide_web](./0-world_wide_web)**

Configure your domain zone so that the subdomain `www` points to your load-balancer IP (`lb-01`).Let’s also add
other subdomains to make our life easier, and write a Bash script that will display information about subdomains.

Requirements:

- Add the subdomain `www` to your domain, point it to your `lb-01` IP (your domain name might be
	configured with default subdomains, feel free to remove them)
	- Add the subdomain `lb-01` to your domain, point it to your `lb-01` IP
	- Add the subdomain `web-01` to your domain, point it to your `web-01` IP
	- Add the subdomain `web-02` to your domain, point it to your `web-02` IP
	- The Bash script must accept 2 arguments:
		- `domain`:	
			- type: string
			- what: domain name to audit
			- mandatory: yes
		- `subdomain`:
			- type: string
			- what: specific subdomain to audit
			- mandatory: no
- Output: `The subdomain [SUB_DOMAIN] is a [RECORD_TYPE] record and points to [DESTINATION]`
- When only the parameter  ` domain `  is provided, display information for its subdomains `www`, `lb-01`,
	`web-01` and `web-02` - in this specific order
	- When passing `domain` and `subdomain` parameters, display information for the specified subdomain
	- Ignore `shellcheck` case `SC2086`
	- Must use:
		* `awk`
		* at least one Bash function
	- You do not need to handle edge cases such as:
		* Empty parameters
		* Nonexistent domain names
		* Nonexistent subdomains

Example:

```bash
$ dig www.holberton.online | grep -A1 'ANSWER SECTION:'
;; ANSWER SECTION:
www.holberton.online.   87  IN  A   54.210.47.110
$ dig lb-01.holberton.online | grep -A1 'ANSWER SECTION:'
;; ANSWER SECTION:
lb-01.holberton.online. 101 IN  A   54.210.47.110
$ dig web-01.holberton.online | grep -A1 'ANSWER SECTION:'
;; ANSWER SECTION:
web-01.holberton.online. 212    IN  A   34.198.248.145
$ dig web-02.holberton.online | grep -A1 'ANSWER SECTION:'
;; ANSWER SECTION:
web-02.holberton.online. 298    IN  A   54.89.38.100
$
$
$ ./0-world_wide_web holberton.online
The subdomain www is a A record and points to 54.210.47.110
The subdomain lb-01 is a A record and points to 54.210.47.110
The subdomain web-01 is a A record and points to 34.198.248.145
The subdomain web-02 is a A record and points to 54.89.38.100
$
$ ./0-world_wide_web holberton.online web-02
The subdomain web-02 is a A record and points to 54.89.38.100
$
```
---

+ [X] 1\. **HAproxy SSL termination**

+ **[1-haproxy_ssl_termination](./1-haproxy_ssl_termination)**

“Terminating SSL on HAproxy” means that HAproxy is configured to handle encrypted traffic, unencrypt it and
						 pass it on to its destination.

Create a certificate using **`certbot`** and configure *`HAproxy`* to accept encrypted traffic for your
			 subdomain *`www.`*.

Requirements:

- HAproxy must be listening on port TCP 443
- HAproxy must be accepting SSL traffic
- HAproxy must serve encrypted traffic that will return the ` / ` of your web server
- When querying the root of your domain name, the page returned must contain `Holberton School`
- Share the *`HAproxy`* config as an answer file (`/etc/haproxy/haproxy.cfg`)

The file `1-haproxy_ssl_termination` must be the *`HAproxy`* configuration file

Make sure to install HAproxy 1.5 or higher, **[SSL termination](https://intranet.hbtn.io/rltoken/VFq2MQ9qHXw2Nb11tnWF6Q)**
  is not available before v1.5.

Example:

```bash
$ curl -sI https://www.holberton.online
HTTP/1.1 200 OK
Server: nginx/1.4.6 (Ubuntu)
Date: Tue, 28 Feb 2017 01:52:04 GMT
Content-Type: text/html
Content-Length: 30
Last-Modified: Tue, 21 Feb 2017 07:21:32 GMT
ETag: "58abea7c-1e"
X-Served-By: 03-web-01
Accept-Ranges: bytes
$
$ curl https://www.holberton.online
Holberton School for the win!
$
```
---

+ [X] 2\. **No loophole in your website traffic**

+ **[100-redirect_http_to_https](./100-redirect_http_to_https)**

A good habit is to enforce HTTPS traffic so that no unencrypted traffic is possible. Configure *`HAproxy`*
	to automatically redirect HTTP traffic to HTTPS.

Requirements:

- This should be transparent to the user
- *`HAproxy`* should return a [301](https://intranet.hbtn.io/rltoken/Oe04HFEd_PTgWAvWBTr1rA)
- *`HAproxy`* should redirect HTTP traffic to HTTPS
- Share the *`HAproxy`* config as an answer file (`/etc/haproxy/haproxy.cfg`)

The file `100-redirect_http_to_https` must be your *`HAproxy`* configuration file

Example:

```bash
$ curl -sIL http://www.holberton.online
HTTP/1.1 301 Moved Permanently
Content-length: 0
Location: https://www.holberton.online/
Connection: close

HTTP/1.1 200 OK
Server: nginx/1.4.6 (Ubuntu)
Date: Tue, 28 Feb 2017 02:19:18 GMT
Content-Type: text/html
Content-Length: 30
Last-Modified: Tue, 21 Feb 2017 07:21:32 GMT
ETag: "58abea7c-1e"
X-Served-By: 03-web-01
Accept-Ranges: bytes

$
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
