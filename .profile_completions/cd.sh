# CD completion
# Complete from CDPATH directories

_complete_cd() {
    local cur="${COMP_WORDS[COMP_CWORD]}"
    local dirs=""
    
    # Get directories from CDPATH
    for dir in $CDPATH; do
        [ -d "$dir" ] || continue
        dirs="$dirs $(ls -d "$dir"/*/ 2>/dev/null | xargs basename -a 2>/dev/null)"
    done
    
    # Also complete hidden dirs
    dirs="$dirs $(ls -d .*/ 2>/dev/null | xargs basename -a 2>/dev/null | grep -v '^\.\.?$')"
    
    COMPREPLY=($(compgen -W "$dirs" -- "$cur"))
}

complete -F _complete_cd -o filenames cd
