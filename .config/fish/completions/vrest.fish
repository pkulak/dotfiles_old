complete -x -c 'vrest' -n '__fish_use_subcommand' -a "edit"
complete -x -c 'vrest' -n '__fish_use_subcommand' -a "create"

vrest --completions | while read line
    set commands (string split '/' $line)

    if test (count $commands) -gt 1
        complete -x -c 'vrest' -n "__fish_seen_subcommand_from $commands[1]" -a "$commands[2]"
    else
        complete -x -c 'vrest' -n '__fish_use_subcommand' -a "$line"
        complete -x -c 'vrest' -n "__fish_seen_subcommand_from edit && __fish_is_nth_token 2" -a "$line"
    end
end
