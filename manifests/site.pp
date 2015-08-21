# Global settings

stage { 'first':
  before => Stage['main'],
}

File {
  mode => 0644,
  owner => root,
  group => root,
}

Exec {
  path => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
}

# Add managed filesystems to fstab
Mount {
  ensure => defined,
}

Service {
  hasrestart => true,
  hasstatus => true,
}
