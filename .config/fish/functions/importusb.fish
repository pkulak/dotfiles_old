# Defined in /home/phil/.config/fish/config.fish @ line 63
function importusb
  mkdir -p ~/Pictures/negatives/(date +%m)/
  mv --backup=numbered /mnt/usbstick/DCIM/100OLYMP/* ~/Pictures/negatives/(date +%m)/
end
