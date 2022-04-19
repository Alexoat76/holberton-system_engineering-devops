# File:   1-install_a_package.pp
# Author: Alex Orland Arévalo Tribaldos
# email:  <3915@holbertonschool.com>

# Using Puppet, install puppet-lint
package { 'puppet-lint':
  ensure   '~> 2.5.0',
  provider => 'gem',
  }
