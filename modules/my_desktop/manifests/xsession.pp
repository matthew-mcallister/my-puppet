class my_desktop::xsession {
  require my_desktop::packages

  file { '/etc/X11':
    ensure => directory,
    recurse => remote,
    source => 'puppet:///modules/my_desktop/xsession',
  }

  file {
    '/etc/lightdm':
      ensure => directory,
      recurse => remote,
      source => 'puppet:///modules/my_desktop/lightdm';
    ['/etc/lightdm/session-setup', '/etc/lightdm/session-cleanup']:
      mode => '0755',
      require => File['/etc/lightdm'];
  }

  # Place to put e.g. wallpapers
  file {
    '/opt/share':
      ensure => directory;
    '/opt/share/xsession':
      ensure => directory,
      require => File['/opt/share'];
  }
}
