class my_desktop::suspend {
  file { '/etc/systemd/logind.conf':
    source => 'puppet:///modules/my_desktop/suspend/logind.conf',
  }
}
