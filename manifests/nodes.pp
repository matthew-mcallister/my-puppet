node default {
  class { 'my::puppet':
    stage => first,
  }
  class { 'my::apt':
    stage => first,
  }

  include my::packages
  include my::extrapackages
  include my::git
  include my::ssh
  include my::rsnapshot

  include my_desktop
}
