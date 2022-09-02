# Defined in /home/phil/.config/fish/config.fish @ line 58
function mountusb
  sudo mkdir -p /home/phil/usbstick
  sudo mount -o uid=phil,gid=phil /dev/sdb1 /home/phil/usbstick
end
