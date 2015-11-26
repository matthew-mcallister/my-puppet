class my_desktop::xmonad {
  require my::extrapackages

  # Install xmonad, xmobar, and dmenu
  package {
    [
      'xmonad',
      'xmobar',
      'suckless-tools',
    ]:
  }
}
