node default {
  class { 'my::puppet':
    stage => first,
  }

  include my::apt
  include my::packages
  include my::extrapackages
  include my::git
  include my::ssh
  include my::docker
  include my::rsnapshot

  include my_desktop
}
