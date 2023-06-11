set -l HOMEBREW_BIN (
  if [ (arch) = "arm64" ] && test -e /opt/homebrew/bin/brew -a -x /opt/homebrew/bin/brew
    echo /opt/homebrew/bin/brew
  else if test -e /usr/local/bin/brew -a -x /usr/local/bin/brew
    echo /usr/local/bin/brew
  end
)

if [ -z $HOMEBREW_BIN ]
  __brew_assert_error_message brew
  return
end

$HOMEBREW_BIN shellenv | source

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
