fish_vi_key_bindings
set fish_greeting

alias ls 'ls -tr --color=auto'
alias .. 'cd ..'
alias ... 'cd ../..'
alias md 'mkdir -p'
alias sm 'GDK_BACKEND=wayland smerge .'
alias ssh 'TERM=xterm-256color command ssh'
alias c clear
alias za zathura
alias ts 'date -u +"%Y-%m-%dT%H:%M:%SZ"'
alias l 'exa --long --all --links --git --sort mod'
alias bc 'bc -lq'
alias rs 'rsync -avH --info=progress2'
alias cleanup_packages 'set -x; sudo pacman -Rs (pacman -Qdtq)'
alias dr 'dragon-drop -a -x'

alias mtvevo 'gocryptfs ~/nas/Drive/crypt/vevo ~/vevo/Notes'
alias mtprivate 'gocryptfs ~/nas/Drive/crypt/private ~/private'

alias podman 'distrobox-host-exec podman'
alias flatpak 'distrobox-host-exec flatpak'
alias snapper 'distrobox-host-exec snapper'
alias rpm-ostree 'distrobox-host-exec rpm-ostree'
alias firefox 'distrobox-host-exec firefox'

set PATH $PATH $HOME/bin $HOME/.cargo/bin $HOME/dotfiles/bin $HOME/vevo/rest/bin $HOME/.local/bin
setenv EDITOR vim
