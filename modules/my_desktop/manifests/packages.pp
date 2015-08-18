class my_desktop::packages {
  include icedove
  include iceweasel

  package {
    [
      # User apps
      'banshee',
      'evince-gtk',
      'galculator',
      'geany',
      'gimp',
      'gparted',
      'inkscape',
      'libreoffice',
      'network-manager-gnome',
      'numlockx',
      'virt-manager',
      'virt-viewer',
      'vlc',
      # Display manager
      'lightdm',
      # X system
      'xbacklight',
      'xclip',
      'xserver-xorg',
    ]:
  }
}
