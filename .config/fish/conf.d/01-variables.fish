# Remove greeting message
set fish_greeting

# Use vscode as default editor
set -gx EDITOR "code --wait"

# Disable homebrew autoupdate
set -gx HOMEBREW_NO_AUTO_UPDATE 1

# Set default terminal
set -gx TERMINAL $HOMEBREW_PREFIX/bin/kitty

# Set proper LANG
set -gx LANG en_US.UTF-8

# Setup gpg tty
set -gx GPG_TTY (tty)

# Source per-machine variables
set -l machine_vars ./00-variables.$hostname.fish
test -f $machine_vars && source $machine_vars
