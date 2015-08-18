class my::git {
  package { 'git': }

  file { '/etc/gitconfig':
    source => 'puppet:///modules/my/git/gitconfig',
    require => Package['git'],
  }
}
