class my_desktop::mozilla {
  package { ['iceweasel', 'firefox-esr']:
    ensure => purged,
  }

  package { 'icedove': }

  package { 'firefox':
    install_options => ['-t', 'experimental'],
  }

  # Disable the most annoying settings (just to mimic OCF)
  file { '/etc/firefox/prefs.js':
    source  => 'puppet:///modules/my_desktop/firefox/prefs.js',
    require => Package['firefox'],
  }
}
