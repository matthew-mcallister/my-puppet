class my_desktop::xmonad {
  require my::extrapackages

  # Install xmonad, xmobar, and dmenu
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
