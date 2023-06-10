if [ (arch) = "arm64" ]
  /opt/homebrew/bin/brew shellenv | source
else
  /usr/local/bin/brew shellenv | source
end

if test -d "$HOMEBREW_PREFIX/share/fish/completions"
  set -gx fish_complete_path $fish_complete_path "$HOMEBREW_PREFIX/share/fish/completions"
end

if test -d "$HOMEBREW_PREFIX/share/fish/vendor_completions.d"
  set -gx fish_complete_path $fish_complete_path "$HOMEBREW_PREFIX/share/fish/vendor_completions.d"
end

set HOMEBREW_CNF_HANDLER "$HOMEBREW_REPOSITORY/Library/Taps/homebrew/homebrew-command-not-found/handler.fish"
if test -f $HOMEBREW_CNF_HANDLER
  source $HOMEBREW_CNF_HANDLER
end
