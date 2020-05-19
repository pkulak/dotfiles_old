# Defined in /home/phil/.config/fish/config.fish @ line 58
function mountusb
  sudo mkdir -p /mnt/usbstick
  sudo mount -o gid=users,fmask=113,dmask=002 /dev/sda1 /mnt/usbstick
end
