class my::rsnapshot {
  package { 'rsnapshot': }

  file { '/etc/rsnapshot.conf':
    source => 'puppet:///modules/my/rsnapshot/rsnapshot.conf',
  }
}
