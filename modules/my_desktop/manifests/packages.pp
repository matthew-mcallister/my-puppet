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
      'network-manager',
      'numlockx',
      'virt-manager',
      'virt-viewer',
      'vlc',
      # Display manager
      'lightdm',
      # X.org
      'xscreensaver',
      'xserver-xorg',
    ]:
  }
}
