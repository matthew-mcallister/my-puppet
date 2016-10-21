class my_desktop::audio {
  # Install basic sound stuff
  package { ['alsa-utils', 'pulseaudio', 'pavucontrol']: }

  # Install fluidsynth and run as a service
  package { 'fluidsynth': }

  file { '/etc/systemd/system/fluidsynth.service':
    source  => 'puppet:///modules/my_desktop/audio/fluidsynth.service',
    notify  => Service['fluidsynth'],
    require => Package['fluidsynth'],
  }

  service { 'fluidsynth':
    ensure   => 'running',
    enable   => true,
    provider => systemd,
    require  => File['/etc/systemd/system/fluidsynth.service'],
  }
}
