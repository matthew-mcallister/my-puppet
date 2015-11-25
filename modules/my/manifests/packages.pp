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
      'udisks',
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
      'python-setuptools',
      'python3',
      'python3-dev',
      'python3-setuptools',
      'virtualenv',
    ]:
  } ->
  exec {
    # Update pip to fix Debian bug #744145
    ['easy_install3 -U pip', 'easy_install -U pip']:
      refreshonly => true,
  }
}
