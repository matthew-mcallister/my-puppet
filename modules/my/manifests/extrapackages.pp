# This is for (non-graphical) packages that aren't necessary on a
# server environment but are either helpful or technical tools
class my::extrapackages {
  include my::packages

  package {
    [
      'autoconf',
      'automake',
      'build-essential',
      'cmake',
      'default-jdk',
      'gdb',
      'haskell-platform',
      'irssi',
      'mercurial',
      'octave',
      'puppet-lint',
      'python-matplotlib',
      'python-numpy',
      'python-pandas',
      'python-scipy',
      'python-yaml',
      'python3-matplotlib',
      'python3-numpy',
      'python3-pandas',
      'python3-scipy',
      'python3-yaml',
      'texlive-fonts-recommended',
      'texlive-latex-extra',
      'texlive-latex-recommended',
      'texlive-publishers',
      'valgrind',
    ]:
  }
}
