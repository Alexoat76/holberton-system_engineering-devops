![Brand](https://assets.website-files.com/6105315644a26f77912a1ada/610540e8b4cd6969794fe673_Holberton_School_logo-04-04.svg)

# 0x09. Web infrastructure design
<div style="text-align: justify">
	
In this project, you should be research and learn about of Web Infrastructure Design. So, this project consists a collection of web infrastructure designs that could be implemented in any web development project. The files contain links to each respective whiteboard diagram.

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

[![M](https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Google_2015_logo.svg/80px-Google_2015_logo.svg.png)](https://www.google.com/search?q=What+is+Web+infrastructure+design&sxsrf=APq-WBsKK_PLxc_urjgSy0EdwtOe9vTEkQ%3A1646833409261&ei=Aa8oYofMD5SYwbkPqM6DyA0&ved=0ahUKEwjH0PPClLn2AhUUTDABHSjnANkQ4dUDCA4&uact=5&oq=What+is+Web+infrastructure+design&gs_lcp=Cgdnd3Mtd2l6EAMyCAghEBYQHRAeMggIIRAWEB0QHjIICCEQFhAdEB4yCAghEBYQHRAeOgkIIxCwAxAnEBM6CQgAELADEAgQHjoHCCMQsAIQJzoKCAAQCBANEB4QE0oECEEYAUoECEYYAFDWDFjIGGCVTmgCcAB4AIABlwKIAfkKkgEFMC44LjGYAQCgAQHIAQTAAQE&sclient=gws-wiz)

[![M](https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Logo_of_YouTube_%282015-2017%29.svg/70px-Logo_of_YouTube_%282015-2017%29.svg.png)](https://www.youtube.com/results?search_query=What+is+Web+infrastructure+design)

### Concepts:
	
- `DNS`
- `Monitoring`
- `Web Server`
- `Network basics`
- `Load balancer`
- `Server`
- [What is a database](https://www.techtarget.com/searchdatamanagement/definition/database)
- [What’s the difference between a web server and an app server?](https://www.youtube.com/watch?v=S97eKyv2b9M)
- [DNS record types](https://pressable.com/?s=DNS&post_type=knowledgebase)
- [Single point of failure](https://en.wikipedia.org/wiki/Single_point_of_failure)
- [How to avoid downtime when deploying new code](https://softwareengineering.stackexchange.com/questions/35063/how-do-you-update-your-production-codebase-database-schema-without-causing-downt#answers-header)
- [High availability cluster (active-active/active-passive)](https://docs.oracle.com/cd/E17904_01/core.1111/e10106/intro.htm#ASHIA712)
- [What is HTTPS](https://www.instantssl.com/http-vs-https)
- [What is a firewall](https://www.webopedia.com/definitions/firewall/)
	
## General :page_with_curl:
	
- A `README.md` file, at the root of the folder of the project, is mandatory.
- For each task, once you are done whiteboarding (on a whiteboard, piece of paper or software or your choice), take a picture/screenshot of your diagram.
- This project will be manually reviewed:
- As each task is completed, the name of that task will turn green.
- Upload a screenshot, showing that you completed the required levels, to any image hosting service.
- For the following tasks, insert the link from of your screenshot into the answer file.
- After pushing your answer file to GitHub, insert the GitHub file link into the URL box.
- You will also have to whiteboard each task in front of a mentor, staff or student - no computer or notes will be allowed during the whiteboarding session.
- Focus on what you are being asked:
- Cover what the requirements mention, we will explore details in a later project.
- Keep in mind that you will have 30 minutes to perform the exercise, you will get points for what is asked in requirements.
- Similarly in a job interview, you should answer what the interviewer asked for, be careful about being too verbose - always ask the interviewer if going into details is necessary - speaking too much can play against you
- In this project, again, avoid going in details if not asked

## Tasks :page_with_curl:

### 0. `Simple web stack`
A lot of websites are powered by simple web infrastructure, a lot of time it is composed of a single server with a `LAMP` stack, so design a one server web infrastructure that hosts the website that is reachable via `www.foobar.com.` Start having a user wanting to access your website.

**Contains:**
- 1 server
- 1 web server `(Nginx)`
- 1 application server
- 1 application files `(your code base)`
- 1 database `(MySQL)`
- 1 domain name foobar.com configured with a www record that points to your server `IP 8.8.8.8`
	
### 1. `Distributed web infrastructure`
Desing three server web infrastructure that hosts the website `www.foobar.com.`

**Contains:**
- 2 servers
- 1 web server `(Nginx)`
- 1 application server
- 1 load-balancer `(HAproxy)`
- 1 set of application files `(your code base)`
- 1 database `(MySQL)`
	
### 2. `Secured and monitored web infrastructure`
Design a three server web infrastructure that hosts the website www.foobar.com, it must be secured, serve encrypted traffic, and be monitored.

**Contains:**
- 3 firewalls
- 1 SSL certificate to serve `www.foobar.com` over `HTTPS`
- 3 monitoring clients `(data collector for Sumologic or other monitoring services)`

	
	
	
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
