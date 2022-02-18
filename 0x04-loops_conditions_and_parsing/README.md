![Brand](https://assets.website-files.com/6105315644a26f77912a1ada/610540e8b4cd6969794fe673_Holberton_School_logo-04-04.svg)

# 0x04. Loops, conditions and parsing
<div style="text-align: justify">
	
In this project, you should be to learn and practice loops and conditionals statements in Bash. Like `env`, `cut`, `for`, `while`, `until`, `if`.

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

[![M](https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Google_2015_logo.svg/80px-Google_2015_logo.svg.png)](https://www.google.com/search?q=loops+in+bash&source=lnms&sa=X&ved=2ahUKEwi10sL1h4r2AhXORjABHbWmBTMQ_AUoAHoECAEQAg&biw=1346&bih=674&dpr=1.25)

[![M](https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Logo_of_YouTube_%282015-2017%29.svg/70px-Logo_of_YouTube_%282015-2017%29.svg.png)](https://www.youtube.com/watch?v=C4cdk8Mzm6M)

<div style="text-align: justify">
	
[Loops sample](https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_09_01.html)</div>
<div style="text-align: justify">
	
[Variable assignment and arithmetic](https://tldp.org/LDP/abs/html/ops.html)</div>
<div style="text-align: justify">
	
[Comparison operators](https://tldp.org/LDP/abs/html/comparison-ops.html)</div>
<div style="text-align: justify">

[File test operators](https://tldp.org/LDP/abs/html/fto.html)</div>
<div style="text-align: justify">

[Make your scripts portable](https://www.cyberciti.biz/tips/finding-bash-perl-python-portably-using-env.html)</div>
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
*You are not allowed to use `awk`</div>

<div style="text-align: justify">
	
*Your Bash script must pass `Shellcheck` (version `0.7.0` via `apt-get`) without any error </div>
	
<div style="text-align: justify">
	
*The first line of all your Bash scripts should be exactly `#!/usr/bin/env bash`. </div>

<div style="text-align: justify">
	
*The second line of all your Bash scripts should be a comment explaining what is the script doing. 


## Tasks :page_with_curl:

* **0. Create a SSH RSA key pair**
  * [0-RSA_public_key.pub](./0-RSA_public_key.pub): A public SSH key uploaded for the
  purposes of Holberton School.

* **1. For Best School loop**
  * [1-for_best_school](./1-for_best_school): Bash script that displays
  `Best School` 10 times using a `for` loop.

* **2. While Best School loop**
  * [2-while_best_school](./2-while_best_school): Bash script that
  displays `Best School` 10 times using a `while` loop.

* **3. Until Best School loop**
  * [3-until_best_school](./3-until_best_school): Bash script that displays
  `Best School` 10 times using an `until` loop.

* **4. If 9, say Hi!**
  * [4-if_9_say_hi](./4-if_9_say_hi): Bash script that displays `Best School`
  10 times using a `while` loop.
  * For the 9th iteration, displays `Best School` and then `Hi` on a
  new line.
  * Uses an `if` statement.

* **5. 4 bad luck, 8 is your chance**
  * [5-4_bad_luck_8_is_your_chance](./5-4_bad_luck_8_is_your_chance): Bash script that loops
  from 1 to 10 using a `while` loop and:
    * Displays `bad luck` on the 4th iteration.
    * Displays `good luck` on the 8th iteration.
    * Displays `Best School` for all other iterations.
  * Uses the `if`, `elif`, and `else` statements.

* **6. Superstitious numbers**
  * [6-superstitious_numbers](./6-superstitious_numbers): Bash script that displays
  numbers from `1` to `20` using a `while` loop and:
    * Displays `4` and then `bad luck from China` for the 4th iteration.
    * Displays `9` and then `bad luck from Japan` for the 9th iteration.
    * Displays `17` and then `bad luck from Italy` for the 17th iteration.
  * Uses a `case` statement.

* **7. Clock**
  * [7-clock](./7-clock): Bash script that displays the time for 12 hours and 59 minutes.
    * Displays hours from `0` to `12`.
    * Displays minutes from `0` to `59`.

* **8. For ls**
  * [8-for_ls](./8-for_ls): Bash script that displays the contents of the current directory
  in list format.
  * Only the part of the name after the first dash is displayed.

* **9. To file, or not to file**
  * [9-to_file_or_not_to_file](./9-to_file_or_not_to_file): Bash script that gives information
  about the `holbertonschool` file.
    * If the file exists, displays: `school file exists`.
    * If the file does not exist, displays: `school file does not exist`.
    * If the file exists and is empty, displays: `school file is empty`.
    * If the file exists and is not empty, displays: `school file is not
    empty`.
    * If the file exists and is a regular file, displays: `school file
    is a regular file`.
    * Otherwise, displays nothing.

* **10. FizzBuzz**
  * [10-fizzbuzz](./10-fizzbuzz): Bash script that displays numbers from
  `1` to `100` in list format.
  * Displays `FizzBuzz` when the number is a multiple of 3 and 5.
  * Displays `Fizz` when the number is a multiple of 3.
  * Displays `Buzz` when the number is a multiple of 5.
  * Otherwise, displays the number.


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
