# Defined in /home/phil/.config/fish/config.fish @ line 63
function importusb
  mkdir -p ~/Pictures/negatives/(date +%m)/
  mv --backup=numbered /mnt/usbstick/DCIM/102OLYMP/*.ORF ~/Pictures/negatives/(date +%m)/
  rm /mnt/usbstick/DCIM/102OLYMP/*.JPG 
end
