class my_desktop::iceweasel {
  package { 'iceweasel': }

  # Disable the most annoying settings (just to mimic OCF)
  file { '/etc/iceweasel/profile/prefs.js':
      source => 'puppet:///modules/my_desktop/iceweasel/prefs.js',
      require => Package['iceweasel'],
  }
}
