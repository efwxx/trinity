# Navigation plugin
# Fuzzy cd, autojump, smart cdpath, directory stack

# CDPATH - directories to search for cd
export CDPATH=".:$HOME:$HOME/projects:$HOME/src:$HOME/code:~"

# Autojump - track cd history
export CDHISTORY="$HOME/.cdhistory"

_cdhistory_add() {
    [ -n "$PWD" ] && grep -qF "$PWD" "$CDHISTORY" 2>/dev/null || printf "%s\n" "$PWD" >> "$CDHISTORY"
}

# Smart cd - auto ls on cd
cd() {
    builtin cd "$@" && ls
}

# Fuzzy cd - find directory by partial match
cdf() {
    if [ -z "$1" ]; then
        cd ..
        return
    fi
    
    local target="$1"
    local match
    
    # First try exact match
    if [ -d "$target" ]; then
        cd "$target"
        return
    fi
    
    # Fuzzy match in subdirs
    match=$(find . -type d -name "*$target*" 2>/dev/null | head -1)
    
    if [ -n "$match" ]; then
        cd "$match"
        return
    fi
    
    # Search in CDPATH
    match=$(find $CDPATH -type d -name "*$target*" 2>/dev/null | head -1)
    
    if [ -n "$match" ]; then
        cd "$match"
        return
    fi
    
    echo "cdf: no directory found matching '$target'"
    return 1
}

# Autojump - cd to frequently visited directories
j() {
    if [ -z "$1" ]; then
        cd ~ || return
        return
    fi
    
    if [ -f "$CDHISTORY" ]; then
        local match
        match=$(grep "$1" "$CDHISTORY" 2>/dev/null | tail -1 | cut -d: -f1)
        
        if [ -n "$match" ] && [ -d "$match" ]; then
            cd "$match"
            return
        fi
    fi
    
    # Fallback to fuzzy search
    cdf "$1"
}

# Show cd history
alias d='dirs -v'

# Quick cd to Nth directory in stack
for i in 0 1 2 3 4 5 6 7 8 9; do
    alias "cd-$i"="cd -$(($i + 1))"
done

# Pop directory stack
alias pd='popd'

# Go up N directories
up() {
    local n="${1:-1}"
    local path=""
    for i in $(seq 1 "$n"); do
        path="../$path"
    done
    cd "$path" || return
}

# Create and cd
mkcd() {
    mkdir -p "$1" && cd "$1"
}

# Track cd history
PROMPT_COMMAND="${PROMPT_COMMAND:+${PROMPT_COMMAND};}_cdhistory_add"

# Hook cd to update history
_cd_hook() {
    _cdhistory_add 2>/dev/null
}

# Wrap cd to track history
cd() {
    builtin cd "$@" && _cd_hook && ls
}

# Enhanced pushd
pushd() {
    builtin pushd "$@" && ls
}
