# Defined in /home/phil/.config/fish/config.fish @ line 63
function importusb
  mkdir -p ~/Pictures/negatives/(date +%m)/
  mkdir -p ~/Videos/negatives/(date +%m)/

  set photos /mnt/usbstick/DCIM/100OLYMP/*.ORF
  set videos /mnt/usbstick/DCIM/100OLYMP/*.MOV
  set jpegs /mnt/usbstick/DCIM/100OLYMP/*.JPG

  count $photos && mv --backup=numbered $photos ~/Pictures/negatives/(date +%m)/
  count $videos && mv --backup=numbered $videos ~/Videos/negatives/(date +%m)/

  count $jpegs && rm $jpegs
end
