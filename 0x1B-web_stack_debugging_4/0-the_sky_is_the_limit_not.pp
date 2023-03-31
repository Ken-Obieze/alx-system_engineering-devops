# increase Nginx bandwith by altering unlimit
exec { 'fix--for-nginx':
  command => 'sed -i "s/15/4096/" /etc/default/nginx',
  path    => ['/bin', '/usr/bin']
} ->

# Restart Nginx
exec { 'nginx-restart':
  command => 'nginx restart',
  path    => '/etc/init.d/'
}
