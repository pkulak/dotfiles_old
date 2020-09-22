# Defined in /home/phil/.config/fish/config.fish @ line 58
function mountusb
  s3fs endo-valid-data s3/ -o passwd_file=.passwd-s3fs
end
