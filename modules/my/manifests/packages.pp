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
      # These packages are kept up-to-date

      # Basic utilities
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
      'pigz',
      'powertop',
      'pv',
      'pwgen',
      'quota',
      'rsnapshot',
      'screen',
      'tar',
      'tcpdump',
      'tcsh',
      'tofrodos',
      'tmux',
      'tree',
      'unzip',
      'vim',
      'zip',
      'zsh',

      # Important development tools
      'python',
      'python-dev',
      'python-pip',
      'python3',
      'python3-dev',
      'python3-pip',
    ]:
  }
}
