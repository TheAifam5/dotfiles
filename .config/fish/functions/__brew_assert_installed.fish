function __brew_assert_installed -a name
  __brew_is_installed $name && return 0
  __brew_assert_error_message $name
  return 1
end
