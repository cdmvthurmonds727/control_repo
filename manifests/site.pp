node default {
  file {'root/README.md':
    ensure  => file,
    content => 'This was an update',
    owner   => 'root',
  }  
  file {'root/README.md':
    owner => 'root',
  }
}
