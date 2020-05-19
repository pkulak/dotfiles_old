# Defined in /home/phil/.config/fish/config.fish @ line 50
function mountrsync
  sshfs 3610@usw-s003.rsync.net:/data2/home/3610 /home/phil/rsync -C
end
