![Brand](https://assets.website-files.com/6105315644a26f77912a1ada/610540e8b4cd6969794fe673_Holberton_School_logo-04-04.svg)

# 0x05. Processes and signals
<div style="text-align: justify">
	
In this project, you should be to learn and practice about handling process ID's and signals in `Bash` with `ps`, `pgrep`, `pkill`, `kill`, `exit`, and `trap`.

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

[![M](https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Google_2015_logo.svg/80px-Google_2015_logo.svg.png)](https://www.google.com/search?q=linux+pid&ei=xvIPYuP3MtOOwbkP5LS6kAo&ved=0ahUKEwjj8unR_Yn2AhVTRzABHWSaDqIQ4dUDCA4&uact=5&oq=linix+pid&gs_lcp=Cgdnd3Mtd2l6EAMyBAgAEEcyBAgAEEcyBAgAEEcyBAgAEEcyBAgAEEcyBAgAEEcyBAgAEEcyBAgAEEdKBAhBGABKBAhGGABQAFgAYKURaABwA3gAgAEAiAEAkgEAmAEAyAEIwAEB&sclient=gws-wiz)

[![M](https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Logo_of_YouTube_%282015-2017%29.svg/70px-Logo_of_YouTube_%282015-2017%29.svg.png)](https://www.youtube.com/watch?v=_5vBubyo1Hs)

<div style="text-align: justify">
	
[Linux PID](http://www.linfo.org/pid.html)</div>
<div style="text-align: justify">
	
[Linux process](https://www.thegeekstuff.com/2012/03/linux-processes-environment/)</div>
<div style="text-align: justify">
	
[Linux signal](https://www.thegeekstuff.com/2012/03/linux-signals-fundamentals/)</div>

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
	
*Your Bash script must pass `Shellcheck` (version `0.7.0` via `apt-get`) without any error </div>
	
<div style="text-align: justify">
	
*The first line of all your Bash scripts should be exactly `#!/usr/bin/env bash`. </div>

<div style="text-align: justify">
	
*The second line of all your Bash scripts should be a comment explaining what is the script doing. 
<div style="text-align: justify">

* For those who want to know more and `learn about all signals`, check out [this article.](https://www.computerhope.com/unix/signals.htm)
	
## Tasks :page_with_curl:

* **0. What is my PID**
  * [0-what-is-my-pid](./0-what-is-my-pid): Bash script that displays its own PID.

* **1. List your processes**
  * [1-list_your_processes](./1-list_your_processes): Bash script that displays a
  list of currently running processes.
  * Shows all processes for all users, including those not featuring a TTY.
  * Processes are displayed in a user-oriented hierarchy.

* **2. Show your Bash PID**
  * [2-show_your_bash_pid](./2-show_your_bash_pid): Bash script that displays lines
  containing the `bash` keyword based on the script defined in `1-list_your_processes`.

* **3. Show your Bash PID made easy**
  * [3-show_your_bash_pid_made_easy](./3-show_your_bash_pid_made_easy): Bash script
  that displays the PID along with the process name of processes who name contains the
  word `bash`.

* **4. To infinity and beyond**
  * [4-to_infinity_and_beyond](./4-to_infinity_and_beyond): Bash script that displays
  `To infinity and beyond` indefinitely with a `sleep 2` in between each iteration.

* **5. Kill me now**
  * [5-kill_me_now](./5-kill_me_now): Bash script that kills the
  [4-to_infinity_and_beyond](./4-to_infinity_and_beyond) process using `kill`.

* **6. Kill me now made easy**
  * [6-kill_me_now_made_easy](./6-kill_me_now_made_easy): Bash script that kills the
  [4-to_infinity_and_beyond](./4-to_infinity_and_beyond) process using `pkill`.

* **7. Highlander**
  * [7-highlander](./7-highlander): Bash script that displays `To infinity and beyond`
  indefinitely with a `sleep 2` in between each iteration.
  * Displays `I am invincible!!!` upon receiving a `SIGTERM` signal.

* **8. Beheaded process**
  * [8-beheaded_process](./8-beheaded_process): Bash script that kills the process
  [7-highlander](./7-highlander).

* **9. Process and PID file**
  * [100-process_and_pid_file](./100-process_and_pid_file): Bash script that creates the file
  `/var/run/myscript.pid` containing its PID and displays `To infinity and
  beyond` indefinitely.
  * Displays `I hate the kill command` upon receiving a `SIGTERM` signal.
  * Displays `Y U no love me?!` upon receiving a `SIGINT` signal.
  * Deletes the file `/var/run/myscript.pid` and terminates itself
  upon receiving the `SIGQUIT` or `SIGTERM` signal.

* **10. Manage my process**
  * [manage_my_process](./manage_my_process): Bash script that writes `I am alive!` to the file
  `/tmp/my_process` indefinitely.
    * Sleeps two seconds in between each write.
  * [101-manage_my_process](./101-manage_my_process): Bash script that manages the
  [manage_my_process](./manage_my_process) script.
  * When passed the argument `start`:
    * Starts [manage_my_process](./manage_my_process).
    * Creates a file containing its PID in `/var/run/my_process.pid`.
    * Displays `manage_my_process started`.
  * When passed the argument `stop`:
    * Stops [manage_my_process](./manage_my_process).
    * Deletes the file `/var/run/my_process.pid`.
    * Displays `manage_my_process stopped`.
  * When passed the argument `restart`:
    * Stops [manage_my_process](./manage_my_process).
    * Deletes the file `/var/run/my_process.pid`.
    * Starts `manage_my_process`.
    * Creates a file containing its PID in `/var/run/my_process.pid`.
    * Displays `manage_my_process started`.
  * Otherwise, displays `Usage: manage_my_process {start|stop|restart}`.

* **11. Zombie**
  * [102-zombie.c](./102-zombie.c): C program that creates five zombie processes.
  * For every zombie created, displays `Zombie process created, PID:
  <ZOMBIE_PID>`.
	
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
