# File:   7-puppet_install_nginx_web_server.pp
# Author: Alex Orland Arévalo Tribaldos
# email:  <3915@holbertonschool.com>

# Using Puppet, Install Nginx server, setup and configuration

exec { 'Update the repository':
  command => 'apt update',
  path    => '/usr/bin:/usr/sbin:/bin'
}

package { 'The web server':
  ensure          => installed,
  name            => 'nginx',
  provider        => 'apt',
  install_options => ['-y']
}

file { 'The home page':
  ensure  => file,
  path    => '/var/www/html/index.nginx-debian.html',
  mode    => '0744',
  owner   => 'www-data',
  content => "Hellow World!\n"
}

file { 'The 404 page':
  ensure  => file,
  path    => '/var/www/html/404.html',
  mode    => '0744',
  owner   => 'www-data',
  content => "Ceci n'est pas une page\n"
}

file { 'Nginx server config file':
  ensure  => file,
  path    => '/etc/nginx/sites-enabled/default',
  mode    => '0744',
  owner   => 'www-data',
  content =>
"server {
				listen 80 default_server;
		 		listen [::]:80 default_server;

				root /var/www/html;
		 		index index.html index.htm index.nginx-debian.html;

		 		server_name _;
		 		location / {
		 						 try_files \$uri \$uri/ =404;
				}
				if (\$request_filename ~ redirect_me){
		 			 			'rewrite ^ https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;',
				}

				error_page 404 /404.html;
				location = /var/www/html/404.html {\n\t\tinternal;\n\t}
}"
}

exec { 'Start the server':
  command => 'service nginx restart',
  path    => '/usr/bin:/usr/sbin:/bin'
}
