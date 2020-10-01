class profile::base{
  user {'root':
   ensure => present.
  }
  include profile::ssh_server
}
