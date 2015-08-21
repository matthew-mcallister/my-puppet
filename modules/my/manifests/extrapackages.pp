# This is for (non-graphical) packages that aren't necessary on a
# server environment but are either helpful or technical tools
class my::extrapackages {
  package {
    [
      'autoconf',
      'automake',
      'build-essential',
      'default-jdk',
      'gdb',
      'haskell-platform',
      'irssi',
      'octave',
      'mercurial',
      'puppet-lint',
      'python-matplotlib',
      'python-numpy',
      'python-pandas',
      'python-scipy',
      'python-yaml',
      'texlive-fonts-recommended',
      'texlive-latex-extra',
      'texlive-latex-recommended',
      'texlive-publishers',
      'valgrind',
    ]:
  }

  package {
    [
      'ipython',
      'ipython3',
      'ipython-notebook',
      'ipython3-notebook',
    ]:
      install_options => ['-t', 'jessie-backports'],
  }
}
