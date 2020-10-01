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
              key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCq4vks2GYPoj6kfvX1ZEtlgxygkfetwXyeDTKigewpdDsl42nMra8Q4TFe4O9lNFL0Au1OlZzAYCoz8qbvIobKgshb4Je6c+o1X5uyUn0KJJIzzSjWgpyWiMzRfkVxkSg1UdMySQMGJ7C41o93pD3TCFPdzQNZCpopWPmZ/QVq8kDP99Tc+yj6Figv9KVfJ2c6aM682JvTTu2g6mDHdqfnv6/BO5P/DFHFd0ZHKNgmxTyGycjs9XYcpaMDRJfpJGRRZ+9YMhL1EZ0fsonUo7da8bUK4Lp2yXZ5CAVAvnBl7Q10U5Zltb/rv6iXUXIS2mCblZDh0xHNdxKOCl49Whnf',

}
