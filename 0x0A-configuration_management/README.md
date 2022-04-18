<p align="center">
<img src="https://img.shields.io/badge/LINUX-darkgreen.svg"/>
<img src="https://img.shields.io/badge/Shell-ligthgreen.svg"/>
<img src="https://img.shields.io/badge/Emacs-purple.svg"/>
<img src="https://img.shields.io/badge/Markdown-black.svg"/><br>	
</p>

---
# 0x0A. Configuration management

This project contains some tasks for learning how to configuration management using *`Puppet`* **(the Ruby gem)**.

<p align="center">
  <img width="300"  
        src="https://media1.giphy.com/media/qgQUggAC3Pfv687qPC/giphy.gif?cid=ecf05e47xmgz88jlg8ad58gsrrvzixugyz63ii2hqcebpdgs&rid=giphy.gif&ct=g"
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
	
The project contains some tasks for learning how to configuration management using ***`Puppet`*** like *`Puppet manifest files`* to `create a file`, `install a package`, 
	and `execute a command`.

## Resources :books:
Read or watch:
	
[![M](https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Google_2015_logo.svg/80px-Google_2015_logo.svg.png)](https://www.google.com/search?q=configuration+management+using+puppet&ei=L65dYraLIeKbwbkPxcCn4As&oq=configuration+management+using+Puppet&gs_lcp=Cgdnd3Mtd2l6EAEYADIFCAAQgAQyBggAEBYQHjIGCAAQFhAeMgYIABAWEB5KBAhBGABKBAhGGABQAFgAYIUQaABwAXgAgAF8iAF8kgEDMC4xmAEAoAECoAEBwAEB&sclient=gws-wiz)

[![M](https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Logo_of_YouTube_%282015-2017%29.svg/70px-Logo_of_YouTube_%282015-2017%29.svg.png)](https://www.youtube.com/results?search_query=configuration+management+using+puppet)

- [Intro to Configuration Management](https://intranet.hbtn.io/rltoken/r-NmkYO8bxIKp2qEx2ZjKQ) 
- [Puppet resource type: file](https://intranet.hbtn.io/rltoken/D0-IO_SIZSXYLKJs2BitYA) 
 *(check “Resource types” for all manifest types in the left menu)*
- [Puppet’s Declarative Language: Modeling Instead of Scripting](https://intranet.hbtn.io/rltoken/Fqmb5rnChQgYAypvKoTxAQ) 
- [Puppet lint](https://intranet.hbtn.io/rltoken/oezu0m_hJ8nEVA6a9o17Tw) 
- [Puppet emacs mode](https://intranet.hbtn.io/rltoken/N70cVw8mG3707He-OxjP1w) 
		
[![js-Puppet-style](https://img.shields.io/badge/style%20guide-Puppet-brightgreen.svg)](http://puppet-lint.com/)

## Requirements
### General
- All files will be interpreted on Ubuntu 20.04 LTS
- All files should end with a new line
- A `README.md` file at the root of the folder of the project is mandatory
- The Puppet manifests must pass *`puppet-lint`* version 2.1.1 without any errors
- The Puppet manifests must run without error
- The Puppet manifests first line must be a comment explaining what the Puppet manifest is about
- The Puppet manifests files must end with the extension `.pp`


## More Info
### Note on Versioning
The ***`Ubuntu 20.04`*** VM should have Puppet 5.5 *preinstalled*.
 
### Install puppet

```bash
$ apt-get install -y ruby=1:2.7+1 --allow-downgrades
$ apt-get install -y ruby-augeas
$ apt-get install -y ruby-shadow
$ apt-get install -y puppet
```

Not need to attempt to upgrade versions. This project is simply a set of tasks to familiarize you with the basic level syntax which is virtually identical in newer versions of Puppet. 
**[Puppet 5 Docs](https://intranet.hbtn.io/rltoken/_xOod_Lzz8WKTbhpG5SWLQ)**

### Install puppet-lint
	
 `$ gem install puppet-lint`
	
### Installation :computer:
	
- Clone this repository: `https://github.com/Alexoat76/holberton-system_engineering-devops.git`	
- Access to directory: `cd 0x0A-configuration_management`
- `Compile` accord to `instructions` of each task.

## Files :file_folder:
	
## Tests :heavy_check_mark:

+ **[tests](./tests)**: Folder of test files. Provided by Holberton School.
		
---

## Tasks

+ [x] 0\. **Create a file**

+ **[0-create_a_file.pp](./0-create_a_file.pp)**

* Using Puppet, create a file in `/tmp`.
	
	* Requirements:
		- File path is `/tmp/school` 
		- File permission is `0744` 
		- File owner is `www-data` 
		- File group is `www-data` 
		- File contains `I love Puppet`

**Example**:
	
```bash
root@6712bef7a528:~# puppet-lint --version
puppet-lint 2.5.2
root@6712bef7a528:~# puppet-lint 0-create_a_file.pp
root@6712bef7a528:~# 
root@6712bef7a528:~# puppet apply 0-create_a_file.pp
Notice: Compiled catalog for 6712bef7a528.ec2.internal in environment production in 0.04 seconds
Notice: /Stage[main]/Main/File[school]/ensure: defined content as '{md5}f1b70c2a42a98d82224986a612400db9'
Notice: Finished catalog run in 0.03 seconds
root@6712bef7a528:~#
root@6712bef7a528:~# ls -l /tmp/school
-rwxr--r-- 1 www-data www-data 13 Mar 19 23:12 /tmp/school
root@6712bef7a528:~# cat /tmp/school
I love Puppetroot@6712bef7a528:~#
```
---
 
+ [x] 1\. **Install a package**

+ **[1-install_a_package.pp](./1-install_a_package.pp)**

* Using Puppet, install *`puppet-lint`* .
	
	* Requirements:
		- Install `puppet-lint` 
		- Version must be `2.5.0`

**Example**:
	
```bash
root@d391259bf577:/# puppet apply 1-install_a_package.pp
Notice: Compiled catalog for d391259bf577 in environment production in 0.14 seconds
Notice: Applied catalog in 0.20 seconds
root@d391259bf577:/# gem list

*** LOCAL GEMS ***

puppet-lint (2.5.0)
root@d391259bf577:/#
```
---

+ [x] 2\. **Execute a command**

+ **[2-execute_a_command.pp](./2-execute_a_command.pp)**

* Using Puppet, create a manifest that kills a process named *`killmenow`*.
	
	* Requirements:
		- Use the `exec` Puppet resource
		- Use `pkill` 

**Example**:
	
### Terminal #0 - starting my process
	
```bash
root@d391259bf577:/# cat killmenow
#!/bin/bash
while [[ true ]]
do
    sleep 2
done

root@d391259bf577:/# ./killmenow
```
	
### Terminal #1 - executing my manifest 
	
```bash
root@d391259bf577:/# puppet apply 2-execute_a_command.pp
Notice: Compiled catalog for d391259bf577.hsd1.ca.comcast.net in environment production in 0.01 seconds
Notice: /Stage[main]/Main/Exec[killmenow]/returns: executed successfully
Notice: Finished catalog run in 0.10 seconds
root@d391259bf577:/# 

```
### Terminal #0 - process has been terminated
	
```
root@d391259bf577:/# ./killmenow
Terminated
root@d391259bf577:/#
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
