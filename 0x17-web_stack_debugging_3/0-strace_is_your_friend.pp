# automated 500 error fix
file { '/var/www/html/wp-settings.php':
  ensure => 'file',
  source => '/var/www/html/wp-settings.php',
}

exec { 'fix-wp':
  command => "/bin/sed -i 's/.phpp/.php/g' /var/www/html/wp-settings.php",
  path    => ['/bin', '/usr/bin'],
  onlyif  => '/usr/bin/test -f /var/www/html/wp-settings.php',
}
