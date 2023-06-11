if __brew_assert_installed asdf && contains 'direnv' (asdf plugin list)
  return
end

__brew_assert_installed direnv || return
direnv hook fish | source
