# Kill completion
# Process names and PIDs

_complete_kill() {
    local cur="${COMP_WORDS[COMP_CWORD]}"
    
    # If starting with -, complete signal names
    if [[ "$cur" == -* ]]; then
        local signals=$(kill -l 2>/dev/null)
        COMPREPLY=($(compgen -W "$signals" -- "$cur"))
        return
    fi
    
    # Complete process names
    local pids=$(ps aux 2>/dev/null | tail -n +2 | awk '{print $11}' | xargs basename -a 2>/dev/null | sort -u)
    COMPREPLY=($(compgen -W "$pids" -- "$cur"))
}

complete -F _complete_kill kill killall pkill
