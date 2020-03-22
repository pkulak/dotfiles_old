fish_vi_key_bindings
set fish_greeting

# use nvim
function vim
  nvim $argv
end

function lsh
  sudo lxc exec "$argv" -- sudo --login --user phil
end

function cpass --wraps "pass"
  pass "$argv" | head -1 | tr -d '\n' | wl-copy
end

function screencast
  wf-recorder -g (slurp)
end

set PATH $PATH $HOME/bin $HOME/.cargo/bin
