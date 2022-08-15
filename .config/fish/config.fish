fish_vi_key_bindings
set fish_greeting

alias ls 'ls -tr --color=auto'
alias .. 'cd ..'
alias ... 'cd ../..'
alias md 'mkdir -p'
alias sm 'GDK_BACKEND=wayland smerge .'
alias ssh 'TERM=xterm-256color command ssh'
alias sd 'sudo shutdown now'
alias c clear
alias za zathura
alias bc 'bc -l'
alias ts 'date -u +"%Y-%m-%dT%H:%M:%SZ"'
alias l 'exa --long --all --links --git --sort mod'
alias bc 'bc -lq'
alias rs 'rsync -avH --info=progress2'
alias cleanup_packages 'set -x; sudo pacman -Rs (pacman -Qdtq)'
alias dr 'dragon-drag-and-drop -a -x'

set PATH $PATH $HOME/bin $HOME/.cargo/bin $HOME/dotfiles/bin $HOME/vevo/rest/bin $HOME/.local/bin $HOME/.local/share/gem/ruby/3.0.0/bin/
setenv EDITOR vim
