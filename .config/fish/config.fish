fish_vi_key_bindings
set fish_greeting

alias ls 'ls -tr'
alias .. 'cd ..'
alias ... 'cd ../..'
alias md 'mkdir -p'

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

function lsh
  sudo lxc exec "$argv" -- sudo --login --user phil
end

function cpass --wraps "pass"
  pass "$argv" | head -1 | tr -d '\n' | wl-copy
end

function screencast
  wf-recorder -g (slurp)
end

function mountusb
  sudo mkdir -p /mnt/usbstick
  sudo mount -o gid=users,fmask=113,dmask=002 /dev/sda1 /mnt/usbstick
end

function importusb
  mv --backup=numbered /mnt/usbstick/DCIM/100OLYMP/* ~/Pictures/negatives/(date +%m)/
end

function umountusb
  sudo umount /mnt/usbstick
end

set PATH $PATH $HOME/bin $HOME/.cargo/bin
