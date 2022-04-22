# File:   1-install_a_package.pp
# Author: Alex Orland Arévalo Tribaldos
# email:  <3915@holbertonschool.com>

# Using Puppet, install flask
package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}
