class my_desktop::packages {
  include icedove
  include iceweasel

  package {
    [
      # User apps
      'banshee',
      'cups',
      'djview4',
      'evince-gtk',
      'galculator',
      'geany',
      'gimp',
      'gparted',
      'inkscape',
      'libreoffice',
      'numlockx',
      'virt-manager',
      'virt-viewer',
      'vlc',
      'wicd',
      # Display manager
      'lightdm',
      # X system
      'xbacklight',
      'xclip',
      'xserver-xorg',
    ]:
  }
}
