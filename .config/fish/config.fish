fish_vi_key_bindings
set fish_greeting

alias ls 'ls -tr'
alias .. 'cd ..'
alias ... 'cd ../..'
alias md 'mkdir -p'
alias sm 'smerge .'
alias ssh 'TERM=xterm-256color command ssh'

function lsd -d 'List only directories (in the current dir)'
    ls -d */ | sed -Ee 's,/+$,,'
end

function wtf -d "Print which and --version output for the given command"
    for arg in $argv
        echo $arg: (which $arg)
        echo $arg: (sh -c "$arg --version")
    end
end

# use nvim
function vim
  nvim $argv
end

function ytdl
  youtube-dl -f "(bestvideo[vcodec=vp9]/bestvideo)+(bestaudio[acodec=opus]/bestaudio)" "https://www.youtube.com/watch?v=$argv" -o "$argv.%(ext)s"
end

function lsh
  sudo lxc exec "$argv" -- sudo --login --user phil
end

function pass 
  set dir (pwd);
  cd ~/notes/tags/credential;
  ls -1 | fzf | awk '{print "\'"$0"\'"}' | xargs sed '2q;d' | nohup wl-copy -n >/dev/null 2>&1
  cd $dir
end

function screencast
  wf-recorder -g (slurp)
end

function mountnotes
  snfs --ext ".md" ~/notes/
end

function mountusb
  sudo mkdir -p /mnt/usbstick
  sudo mount -o gid=users,fmask=113,dmask=002 /dev/sda1 /mnt/usbstick
end

function importusb
  mkdir -p ~/Pictures/negatives/(date +%m)/
  mv --backup=numbered /mnt/usbstick/DCIM/100OLYMP/* ~/Pictures/negatives/(date +%m)/
end

function umountusb
  sudo umount /mnt/usbstick
end

function news
  yay -Pw
end

set PATH $PATH $HOME/bin $HOME/.cargo/bin $HOME/dotfiles/bin

