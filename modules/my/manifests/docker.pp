class my::docker {
  package { 'docker.io':
    install_options => ['-t', 'jessie-backports'],
  }

  # Download common images?
}
