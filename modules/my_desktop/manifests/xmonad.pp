class my_desktop::xmonad {
  require my::extrapackages

  package {
    [
      'xmonad',
      'libghc-xmonad-dev',
      'libghc-xmonad-contrib-dev',
      'xmobar',
      'suckless-tools',
    ]:
  }
}
