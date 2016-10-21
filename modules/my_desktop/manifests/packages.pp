class my_desktop::packages {
  include mozilla

  package {
    [
      # User applications
      'arandr',
      'banshee',
      'eog',
      'evince-gtk',
      'galculator',
      'geany',
      'gimp',
      'gnome-terminal',
      'gparted',
      'transmission',
      'virt-manager',
      'virt-viewer',
      'vlc',
      # Utils/misc
      'dunst',
      'libnotify-bin',
      'numlockx',
      # Display manager
      'lightdm',
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
