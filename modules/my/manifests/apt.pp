class my::apt {
  package { ['aptitude', 'apt-transport-https']: }

  class { '::apt':
    purge  => {
      'sources.list' => true,
      'sources.list.d' => true,
      'preferences' => true,
      'preferences.d' => true,
    },
  }

  apt::source {
    'debian':
      location => 'https://mirrors.ocf.berkeley.edu/debian/',
      release => 'jessie',
      repos => 'main',
      include => {
        src => true,
      };

    'debian-security':
      location => 'https://mirrors.ocf.berkeley.edu/debian-security/',
      release => 'jessie/updates',
      repos => 'main',
      include => {
        src => true,
      };

    'debian-updates':
      location => 'https://mirrors.ocf.berkeley.edu/debian/',
      release => 'jessie-updates',
      repos => 'main',
      include => {
        src => true,
      };
  }

  class { '::apt::backports':
    location => 'https://mirrors.ocf.berkeley.edu/debian/',
    repos => 'main',
  }

  # iceweasel is gone, long live firefox
  apt::key { 'firefox':
    id     => '85F06FBC75E067C3F305C3C985A3D26506C4AE2A',
    source => 'https://mozilla.debian.net/archive.asc',
  }
  apt::source { 'firefox':
      location => 'https://mozilla.debian.net/',
      release  => 'jessie-backports',
      repos    => 'firefox-release',
      include  => {
        src => true,
      };
  }
}
