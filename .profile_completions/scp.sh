# SCP completion
# Files for remote scp operations

_complete_scp() {
    local cur="${COMP_WORDS[COMP_CWORD]}"
    
    # If there's a colon, complete remote path
    for word in "${COMP_WORDS[@]}"; do
        if [[ "$word" == *:* ]]; then
            # Extract host and complete from local
            COMPREPLY=($(compgen -f -- "$cur"))
            return
        fi
    done
    
    # Otherwise complete local files
    COMPREPLY=($(compgen -f -- "$cur"))
}

complete -F _complete_scp scp
