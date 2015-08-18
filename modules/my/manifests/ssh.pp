class my::ssh {
  package { ['openssh-client', 'openssh-server']: }

  service { 'ssh':
    require => Package['openssh-server'],
  }
}
