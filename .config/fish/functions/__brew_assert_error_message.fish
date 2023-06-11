function __brew_assert_error_message -a app_name
  set_color red;
  printf "✘"
  set_color normal;
  echo " $app_name not installed"
end
