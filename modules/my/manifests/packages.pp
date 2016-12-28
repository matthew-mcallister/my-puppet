# This class includes minimal packages for administering a (Debian) system.
# Packages for everyday use go in my::extrapackages.
class my::packages {
  # Get rid of these packages
  package {
    [
      'mlocate',
      'popularity-contest',
      'apt-listchanges',
      'needrestart'
    ]:
    ensure => purged
  }

  package {
    [
      'apt-file',
      'bash',
      'bsdmainutils',
      'cpufrequtils',
      'curl',
      'dtach',
      'finger',
      'htop',
      'iftop',
      'iotop',
      'iperf',
      'lsof',
      'gzip',
      'mtr',
      'netcat-openbsd',
      'parted',
      'pigz',
      'powertop',
      'pv',
      'pwgen',
      'quota',
      'screen',
      'tar',
      'tcpdump',
      'tcsh',
      'tofrodos',
      'tmux',
      'tree',
      'udisks2',
      'unzip',
      'vim',
      'zip',
      'zsh',
    ]:
  }

  package {
    [
      'python',
      'python-dev',
      'python-pip',
      'python-setuptools',
      'python3',
      'python3-dev',
      'python3-pip',
      'python3-setuptools',
      'virtualenv',
    ]:
  }
}
