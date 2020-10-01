class profile::ssh_server {
      package {'openssh-server'}:
              ensure => present,
      }
      service { 'sshd':
              ensure => 'running',
              enable => 'true',
      }        
      ssh_authorized_key { 'root@master.puppet.vm':     
              ensure => present.
              user   => 'root',
              type   => 'ssh-rsa',
              key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC8OjdvvMhXbpq4pRWxC0hMR+psyB3umMCNMWwMWyDPXdhE/3YT6yFIAre7sk57jx9P9mD2GE+PRsTZvs299EgColF6UBX17YQCbgAHMNRm2wnzp+Zb/1Z8kO7EUnXkBgKvQWfU6YRPZp61AXEzpk/I7eV/HhYXSM7cpRGPABAHeL52BAf+Fzqj1FO9mmHGW3hgPJBwsrRJ8dX0ly4S01C8HXKWnxFO+JqMFzm3sLys3Cyr758Dl1M2tAHP5cI3GTdeMY7yclgqVjQllYIs6AJoqO+EMXjVEcP7HmezhrVBdTSRy/Abk/bj6aIBv4dtKmVjE4wb3p4vvOtieCkmtF3v',

}
