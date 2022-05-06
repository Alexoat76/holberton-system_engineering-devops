# File:   1-user_limit.pp
# Author: Alex Orland Arévalo Tribaldos
# email:  <3915@holbertonschool.com>

# Enable the user holberton to login and open files without error.

file {'test_limits':
  ensure  =>  present,
  path    =>  '/etc/security/limits.conf',
  content =>  ''
}
