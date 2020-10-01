class profile::ssh_server {
      package {'openssh-server'}:
              ensure => present,
      }
      service { 'sshd':
              ensure =>  'running',
              enable => 'true'
      }        
      ssh_authorized_key { 'root@master.puppet.vm':     
              ensure => present.
              user   => 'root',
              type   => 'ssh-rsa',
              key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCYA7bc/h0Kgzs7/T0MMEfhKv7AOthqLwGrcEKOKqVFEX+HZIFvXEdmOyNIkRlndMuZRmZd0qXIYzPhdJeurVKoQWGtSq/YT6ipNtEL9d4nRkDtYufN5bZ+a1R+hWximLc3orMiwIQ2FFydbcNvPZfc65NRjAiz6buwLSjqlRyVBThCRSrk3/o3Cxfbjy/vxrI/YbTNueyY3U3IiSDgJYsY/A1tjkP6PTsmbf3uTAbdi5W4A0GB729gG27+Fd2AarsoxAMYbriFMc62o/rw7hkZJdv9Dx/fVOV/8NwWYQqmG+ubNoe76k1jkh10IPAG9EyoNMdjfTtSwirAzFlhwnJ1',

}
