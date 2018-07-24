class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDRvyVBfn1H6U9AVH+z2D4AYMKacFYPx6/piw+W4lpQIPGhG2bVZrksof2lDSvSG+EkoXrY8WotIxnz8mGgTW5GwDj85KCKPc9TWCuIIQ8ANKWKHEmeNhQTSNuDPqfIr2ChqUBv5OHbaqN+miK9bHxSbEgKUaK9qZQLxZDlgFwpFUwuS8eMNkqhL7ftFDlA+XM09oGi6YSi3Ug8OHalD/I44K15GI+XYaG2W3Jnguxpb29krjtIyWVsU8Nb6FIleItBV7TuPMTI1rlxA4BhgLmBhb8nVB+Q3OD77Oos2fsjz8mOwIzxsEU5fjma2P/w74F78j+UqkuvEKUJc/2AC3M/',
	}  
}
