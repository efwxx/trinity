# SSH completion
# Hosts from ~/.ssh/config and known_hosts

_complete_ssh() {
    local cur="${COMP_WORDS[COMP_CWORD]}"
    local hosts=""
    
    # Get hosts from ssh config
    if [ -f "$HOME/.ssh/config" ]; then
        hosts=$(grep -E '^Host ' "$HOME/.ssh/config" 2>/dev/null | awk '{print $2}')
    fi
    
    # Get hosts from known_hosts
    if [ -f "$HOME/.ssh/known_hosts" ]; then
        hosts="$hosts $(cut -d' ' -f1 "$HOME/.ssh/known_hosts" 2>/dev/null | cut -d, -f1)"
    fi
    
    COMPREPLY=($(compgen -W "$hosts" -- "$cur"))
}

complete -F _complete_ssh ssh
