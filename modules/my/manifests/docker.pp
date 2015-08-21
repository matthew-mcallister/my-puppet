class my::docker {
  require my::apt

  package { 'docker.io':
    install_options => ['-t', 'jessie-backports'],
  }

  # Download common images?
}
