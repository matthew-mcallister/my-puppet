class my_desktop::packages {
  include icedove
  include iceweasel

  package {
    [
      # User applications
      'arandr',
      'banshee',
      'cups',
      'djview4',
      'eog',
      'evince-gtk',
      'galculator',
      'geany',
      'gimp',
      'gnome-terminal',
      'gparted',
      'inkscape',
      'libnotify-bin',
      'libreoffice',
      'numlockx',
      'transmission',
      'virt-manager',
      'virt-viewer',
      'vlc',
      'wicd',
      # Display manager
      'lightdm',
      # Sound
      'alsa-utils',
      # X system
      'xbacklight',
      'xclip',
      'xscreensaver',
      'xserver-xorg',
      # Printing
      'hplip',
      'hplip-ppds',
    ]:
  }
}
