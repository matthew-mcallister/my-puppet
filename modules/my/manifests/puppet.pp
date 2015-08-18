# Additional configuration for Puppet
class my::puppet {
  package { ['facter', 'puppet']: }
}
