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
