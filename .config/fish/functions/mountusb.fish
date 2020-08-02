# Defined in /home/phil/.config/fish/config.fish @ line 58
function mountusb
  sudo mkdir -p /mnt/usbstick
  sudo mount -o uid=phil,gid=phil /dev/sda1 /mnt/usbstick
end
