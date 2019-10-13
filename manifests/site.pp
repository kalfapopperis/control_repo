node default {
  file {'/root/README':
    ensure  => file,
    content => 'This is a puppet file',
    owner   => 'root',
  }
}
