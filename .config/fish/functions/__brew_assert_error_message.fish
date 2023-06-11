function __brew_assert_error_message
  set -l app_name $argv[1]

  set_color red;
  printf "✘"
  set_color normal;
  echo " $app_name not installed"
end
