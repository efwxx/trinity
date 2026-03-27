# Make completion
# Targets from Makefile

_complete_make() {
    local cur="${COMP_WORDS[COMP_CWORD]}"
    local targets=""
    
    # Get targets from Makefile
    if [ -f Makefile ] || [ -f makefile ]; then
        targets=$(grep -E '^[a-zA-Z0-9_-]+:' Makefile makefile 2>/dev/null | cut -d: -f1 | tr '\n' ' ')
    fi
    
    COMPREPLY=($(compgen -W "$targets" -- "$cur"))
}

complete -F _complete_make make gmake
