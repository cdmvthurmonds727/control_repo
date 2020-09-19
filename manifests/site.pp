node default {
  file {'root/README.md':
    ensure  => file,
    content => "This was an update".
  }  
}
