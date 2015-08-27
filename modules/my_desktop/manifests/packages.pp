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
      'xserver-xorg',
    ]:
  }
}
