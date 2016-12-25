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
      release => 'stretch',
      repos => 'main',
      include => {
        src => true,
      };

    'debian-security':
      location => 'https://mirrors.ocf.berkeley.edu/debian-security/',
      release => 'stretch/updates',
      repos => 'main',
      include => {
        src => true,
      };

    'debian-updates':
      location => 'https://mirrors.ocf.berkeley.edu/debian/',
      release => 'stretch-updates',
      repos => 'main',
      include => {
        src => true,
      };
  }

  class { '::apt::backports':
    location => 'https://mirrors.ocf.berkeley.edu/debian/',
    repos => 'main',
  }

  # TODO: switch to mozilla.debian.net once stretch is supported
  apt::source { 'debian-experimental':
    location => 'https://mirrors.ocf.berkeley.edu/debian/',
    release  => 'experimental',
    repos    => 'main',
    include  => {
      src => true,
    },
  }
}
