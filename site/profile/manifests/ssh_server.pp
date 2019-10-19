class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => true,
  }
  ssh_authorized_key { 'root@system1.example.com':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDzNEB3PO4NjoAI73fWiJqRN/9cM4ZcN3mvauNPfjB7fxfJwOpvKLcEu7ZHk4s8WbnXTkJ3GTf+loJvjBQ+Ach2jTz3rE+zuA38Ht6v0QsyP/GK4Rc77pVKe+yRURI+q7apeDBiW4nvAyHqtV2NM8O2YFFvQOHFerLacVx+8ezBZ2MxAnr8rLTOJA8WVwZtzOfgtTQJvOEX1/86cvHZ5FfEgpC67w8bktssk0V+mAo6jorsIYIB9WJHxW3AhU+ADJhetejJ6Su3DLn1yh7rmZgyhJbpcqbTGyInjlO6sML+Ht59d71stJc4RXsp4Tra8BHAMIeu/G0JLvTRZg6Jpdpr',
  }
}
