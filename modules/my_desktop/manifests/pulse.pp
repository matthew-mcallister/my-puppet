class my_desktop::pulse {
  package {
    [
      'pulseaudio',
      'alsa-utils',
      'libasound2-plugins',
      'paprefs'
    ]:
  }

  # Use pulse for everything
  file { '/etc/asound.conf':
    source => 'puppet:///modules/my_desktop/pulse/asound.conf',
  }
}
