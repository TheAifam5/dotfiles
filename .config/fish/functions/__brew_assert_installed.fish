function __brew_assert_installed
  set -l app_name $argv[1]

  __brew_is_installed $app_name && return 0
  __brew_assert_error_message $app_name
  return 1
end
