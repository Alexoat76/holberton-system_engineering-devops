![Brand](https://assets.website-files.com/6105315644a26f77912a1ada/610540e8b4cd6969794fe673_Holberton_School_logo-04-04.svg)

# 0x07. Networking basics #0
<div style="text-align: justify">
	
In this project, you should be to learn about networking concepts. Practice write Bash Script for learn OSI model, LAN and WAN networks, and TCP/UDP data transfer protocols.

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

[![M](https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Google_2015_logo.svg/80px-Google_2015_logo.svg.png)](https://www.google.com/search?q=regular+expression&oq=regular+&aqs=chrome.2.69i57j0i512l5j46i512j0i512l3.4016j1j15&sourceid=chrome&ie=UTF-8)

[![M](https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Logo_of_YouTube_%282015-2017%29.svg/70px-Logo_of_YouTube_%282015-2017%29.svg.png)](https://www.youtube.com/watch?v=sa-TUpSx1JA)

<div style="text-align: justify">

#### Regular Expression:
	
[http://www.regular-expressions.info/](https://www.regular-expressions.info/)</div>
<div style="text-align: justify">
	
[http://www.w3schools.com/jsref/jsref_obj_regexp.asp](https://www.w3schools.com/jsref/jsref_obj_regexp.asp). Play with regexp (or compose them):

* Ruby: [http://rubular.com/](https://rubular.com/) </div>
<div style="text-align: justify">
	
* PHP/Javascript/Python: https://regex101.com/  </div>
<div style="text-align: justify">
	
[Regular expressions - basics](https://www.slideshare.net/neha_jain/introducing-regular-expressions)</div>
	
[Regular expressions - advanced](https://www.slideshare.net/neha_jain/advanced-regular-expressions-80296518)</div>

[Use a regular expression against a problem: now you have 2 problems](https://blog.codinghorror.com/regular-expressions-now-you-have-two-problems/)</div>
<div style="text-align: justify">

[Learn Regular Expressions with simple, interactive exercises](https://regexone.com/lesson/matching_characters?)</div>
<div style="text-align: justify">
	
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
	
*The first line of all your Bash scripts should be exactly `#!/usr/bin/env ruby`. </div>

<div style="text-align: justify">
	
*All the `regex` must be built for the `Oniguruma library`. 
<div style="text-align: justify">

## Usage :pushpin:
	
* Usage: Run each file with ```./[filename] "pattern to test if match" | cat -e```
* Each file has the following format:
```
#!/usr/bin/env ruby
puts ARGV[0].scan(/ regex here /).join
```
	
## Tasks :page_with_curl:

_Note: Each Ruby script in the project matches regular expressions based on an
argument passed to it via the command line._

* **0. Simply matching School**
  * [0-simply_match_school.rb](./0-simply_match_school.rb): Ruby script that
  matches the regular expression `School`.

* **1. Repetition Token #0**
  * [1-repetition_token_0.rb](./1-repetition_token_0.rb): Ruby script that matches
  the regular expression `hbn` with between 2-5 `t`'s in between `hb` and `n`.

* **2. Repetition Token #1**
  * [2-repetition_token_1.rb](./2-repetition_token_1.rb): Ruby script that matches
  the regular expression `hn` with 0 or 1 occurrences of `b` and 0 or 1
  occurrences of `t` in between `h` and `n`.

* **3. Repetition Token #2**
  * [3-repetition_token_2.rb](./3-repetition_token_2.rb): Ruby script that matches
  the regular expression `hbn` with 1 or more `t`'s in between `hb` and `n`.

* **4. Repetition Token #3**
  * [4-repetition_token_3.rb](./4-repetition_token_3.rb): Ruby script that matches the
  regular expression `hbn` with 0 or more `t`'s in between `hb` and `n`.

* **5. Not quite HBTN yet**
  * [5-beginning_and_end.rb](./5-beginning_and_end.rb): Ruby script that matches a
  regular expression starting with `h` and ending with `n` with any single character in between.

* **6. Call me maybe**
  * [6-phone_number.rb](./6-phone_number.rb): Ruby script that matches a regular expression
  representing a 10-digit phone number.

* **7. OMG WHY ARE YOU SHOUTING?**
  * [7-OMG_WHY_ARE_YOU_SHOUTING.rb](./7-OMG_WHY_ARE_YOU_SHOUTING.rb): Ruby script that
  matches regular expressions of uppercase letters.

* **8. Textme**
  * [100-textme.rb](./100-textme.rb): Ruby script that runs statistics on TextMe app text
  message transcations.
  * Output: `[SENDER],[RECEIVER],[FLAGS]` where
    * `[SENDER]` is the sender phone number or name (including country code
    if present).
    * `[RECEIVER]` is the receiver phone number or name (including country code
    if present).
    * `[FLAGS]` is the flags that were used.

* **9. Pass LinkedIn technical interview level0**
  * [101-passed_linkedin_regex_challenge.jpg](./101-passed_linkedin_regex_challenge.jpg):
  Screenshot signifying completion of the
  [LinkedIn Engineering Regex Puzzle](https://engineering.linkedin.com/puzzle).
	
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
