class my_desktop::mozilla {
  package { 'iceweasel':
    ensure => purged,
  }

  package { 'firefox':
    install_options => ['-t', 'jessie-backports'],
    require => Apt::Source['firefox'],
  }

  # Disable the most annoying settings (just to mimic OCF)
  file { '/etc/firefox/prefs.js':
      source  => 'puppet:///modules/my_desktop/firefox/prefs.js',
      require => Package['firefox'],
  }

  package { 'icedove': }
}
