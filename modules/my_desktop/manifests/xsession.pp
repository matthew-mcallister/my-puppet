class my_desktop::xsession {
  require packages
  include xmonad

  file { '/etc/X11/default-display-manager':
    source => 'puppet:///modules/my_desktop/xsession/default-display-manager',
  }

  # Place to put e.g. wallpapers
  file {
    '/opt/share':
      ensure => directory;
    '/opt/share/xsession':
      ensure => directory,
      require => File['/opt/share'];
  }

  file {
    '/etc/lightdm/lightdm.conf':
      source => 'puppet:///modules/my_desktop/xsession/lightdm/lightdm.conf';
    '/etc/lightdm/lightdm-gtk-greeter.conf':
      source => 'puppet:///modules/my_desktop/xsession/lightdm/lightdm-gtk-greeter.conf';
    '/etc/lightdm/session-setup':
      mode => '0755',
      source => 'puppet:///modules/my_desktop/xsession/lightdm/session-setup';
    '/etc/lightdm/session-cleanup':
      mode => '0755',
      source => 'puppet:///modules/my_desktop/xsession/lightdm/session-cleanup';
  }
}
