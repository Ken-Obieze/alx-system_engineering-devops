#client config

file_line { 'password auth':
	path  => '/etc/ssh/ssh_config',
	match => '^ PasswordAuthentication',
	line  => ' PasswordAuthentication no',
}

file_line { 'set identity file':
	path  => '/etc/ssh/ssh_config',
	match => '^ IdentityFile',
	line  => ' IdentityFile ~/.ssh/holberton',
}
