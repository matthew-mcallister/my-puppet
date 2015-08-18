# Global settings

stage { 'first':
  before => Stage['main'],
}

File {
  mode => 0644,
  owner => root,
  group => root,
}

# Add managed filesystems to fstab
Mount {
  ensure => defined,
}

Service {
  hasrestart => true,
  hasstatus => true,
}
