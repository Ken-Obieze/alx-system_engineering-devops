# install flask

exec {'pupet-lint':
  command => '/usr/bin/apt-get -y python-3.7 -m pip install flask'
}
