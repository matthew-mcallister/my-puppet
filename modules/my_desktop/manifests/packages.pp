class my_desktop::packages {
  include my_desktop::mozilla

  package {
    [
      # User applications
      'arandr',
      'eog',
      'evince-gtk',
      'galculator',
      'geany',
      'gimp',
      'gnome-terminal',
      'gparted',
      'hexchat',
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
