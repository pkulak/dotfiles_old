# Defined in /home/phil/.config/fish/config.fish @ line 15
function wtf --description 'Print which and --version output for the given command'
    for arg in $argv
        echo $arg: (which $arg)
        echo $arg: (sh -c "$arg --version")
    end
end
