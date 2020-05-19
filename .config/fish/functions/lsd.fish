# Defined in /home/phil/.config/fish/config.fish @ line 11
function lsd --description 'List only directories (in the current dir)'
    ls -d */ | sed -Ee 's,/+$,,'
end
