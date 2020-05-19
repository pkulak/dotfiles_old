# Defined in /home/phil/.config/fish/config.fish @ line 35
function pass
  set dir (pwd);
  cd ~/notes/tags/credential;
  ls -1 | fzf | awk '{print "\'"$0"\'"}' | xargs sed '2q;d' | nohup wl-copy -n >/dev/null 2>&1
  cd $dir
end
