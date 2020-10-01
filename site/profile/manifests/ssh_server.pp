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
              key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDSD0k3Ub0ysXfZA4MXx90p6crpN0aKb60Gm6B4gBYdBrasm9rO9PJLifZt2l+PhFbEMjXoEd0d/4mGIlxGuJfiiTQmAyF6wQSXrrGrYt7obBUWx0HWM08f9DKY52Zw6UveT8DGa14/NLTINGjEHVNyGRzVB88sljkaxii5Di5gEED90nhVXhD1xNUg+TUwzAqUikfbWd3ttqAPzQNc5X2Ez98llvS5VG7PHhyRWg/227JTiab7V+5+VmdYR54u0te01fjH2kwL1g0LPc0yhbkGZcmTarYgoMc3lv1V9ciz7pAtq8MTxIS0y47v7Q+1O0hjfItI3F9r82SjmaDURCql',

}
