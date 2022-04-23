# File:   7-puppet_install_nginx_web_server.pp
# Author: Alex Orland Arévalo Tribaldos
# email:  <3915@holbertonschool.com>

# Using Puppet| Install Nginx server, setup and configuration

exec { 'Update repository':
  command => 'apt update',
  path    => '/usr/bin:/usr/sbin:/bin'
}

package { 'nginx':
  ensure          => 'installed'
  provider        => 'apt',
  install_options => ['-y']
}

file { '/var/www/html/index.nginx-debian.html':
  content => 'Hello World',
}

file_redir { 'redirection-301':
  ensure => 'present',
  path   => '/etc/nginx/sites-available/default',
  after  => 'listen 80 default_server;',
  line   => 'rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;',
}

service { 'nginx':
  ensure  => running,
  require => Package['nginx'],
}
