function __brew_is_installed -a name
  test -d "$HOMEBREW_PREFIX/Caskroom/$name" -o -d "$HOMEBREW_PREFIX/Cellar/$name"
end
