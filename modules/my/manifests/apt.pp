class my::apt {
  package { 'aptitude': }

  class { '::apt':
    purge  => {
      'sources.list' => true,
      'sources.list.d' => true,
      'preferences' => true,
      'preferences.d' => true,
    },
    update => {
      frequency => 'reluctantly',
    },
  }

  apt::source {
    'debian':
      location => 'http://mirrors.ocf.berkeley.edu/debian/',
      release => 'jessie',
      repos => 'main',
      include => {
        src => true,
      };

    'debian-security':
      location => 'http://mirrors.ocf.berkeley.edu/debian-security/',
      release => 'jessie/updates',
      repos => 'main',
      include => {
        src => true,
      };

    'debian-updates':
      location => 'http://mirrors.ocf.berkeley.edu/debian/',
      release => 'jessie-updates',
      repos => 'main',
      include => {
        src => true,
      };
  }

  class { '::apt::backports':
    location => 'http://mirrors.ocf.berkeley.edu/debian/',
    repos => 'main',
  }

  # iceweasel is gone, long live firefox
  apt::key { 'firefox':
    id     => '85F06FBC75E067C3F305C3C985A3D26506C4AE2A',
    source => 'http://mozilla.debian.net/archive.asc',
  }
  apt::source { 'firefox':
      location => 'http://mozilla.debian.net/',
      release  => 'jessie-backports',
      repos    => 'firefox-release',
      include  => {
        src => true,
      };
  }
}
