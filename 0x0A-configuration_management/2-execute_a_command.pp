# File:   2-execute_a_command.pp
# Author: Alex Orland Arévalo Tribaldos
# email:  <3915@holbertonschool.com>

# Using Puppet, create a manifest that kills a process named 'killmenow'
exec { 'pkill killmenow':
  path => '/usr/bin:/usr/sbin:/bin'
}
