class my_desktop::packages {
  include icedove
  include iceweasel

  package {
    [
      # User applications
      'arandr',
      'banshee',
      'djview4',
      'eog',
      'evince-gtk',
      'galculator',
      'geany',
      'gimp',
      'gnome-terminal',
      'gparted',
      'inkscape',
      'libreoffice',
      'transmission',
      'virt-manager',
      'virt-viewer',
      'vlc',
      'wicd',
      # Utils/misc
      'dunst',
      'libnotify-bin',
      'numlockx',
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
      'cups',
      'hplip',
      'hpijs-ppds',
    ]:
  }
}
