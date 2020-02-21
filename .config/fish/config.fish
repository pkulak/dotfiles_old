fish_vi_key_bindings
set fish_greeting

# use nvim
function vim
  nvim $argv
end

function lsh
  sudo lxc exec "$argv" -- sudo --login --user phil
end

function config
  /usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME $argv
end

