class my_desktop::sshfs {
  require my::ssh

  # Could automount but authentication is a concern
  package { ['sshfs', 'fuse']: }
}
