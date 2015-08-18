class my::apt {
  package { 'aptitude': }

  class { '::apt':
    purge => {
      'sources.list' => true,
      'sources.list.d' => true,
    }
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

  class { 'apt::backports':
    location => 'http://mirrors.ocf.berkeley.edu/debian/',
    repos => 'main',
    pin => 10,
  }
}
