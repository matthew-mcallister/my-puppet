class my_desktop::network {

  package { 'wpasupplicant': }

  file { '/etc/network/interfaces':
    source  => 'puppet:///modules/my_desktop/network/interfaces',
  }
}
