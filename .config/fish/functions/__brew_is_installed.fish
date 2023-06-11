function __brew_is_installed
  set -l app_name $argv[1]

  type -q $app_name || brew info $app_name &>/dev/null
end
