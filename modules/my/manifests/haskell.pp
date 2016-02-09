# Backport GHC and avoid old libraries in haskell-platform
class my::haskell {
  package {
    [
      'cabal-install',
      'ghc',
    ]:
      install_options => ['-t', 'jessie-backports'],
  }
}
