# install flask

exec {'flask':
#  ensure   => '2.1.0'
#  provider => 'pip3'
  command => 'usr/bin/apt-get python-3.8 -m pip3 install -y flask -v 2.1.0'
}
