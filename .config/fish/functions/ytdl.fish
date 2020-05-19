# Defined in /home/phil/.config/fish/config.fish @ line 27
function ytdl
  youtube-dl -f "(bestvideo[vcodec=vp9]/bestvideo)+(bestaudio[acodec=opus]/bestaudio)" "https://www.youtube.com/watch?v=$argv" -o "$argv.%(ext)s"
end
