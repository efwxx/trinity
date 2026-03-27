# Completion plugin
# Custom bash completion system - no package required

# Only load for bash
[ -z "$BASH_VERSION" ] && return

# Completion directories
COMPLETION_DIR="$HOME/.dotfiles/.profile_completions"
COMPLETION_LOADED=""

# Load a completion file on demand
_completion_loader() {
    local cmd="${COMP_WORDS[0]}"
    
    # Skip if already loaded
    [ -n "${COMPLETION_LOADED##*$cmd*}" ] || return
    
    local comp_file="$COMPLETION_DIR/${cmd}.sh"
    
    if [ -f "$comp_file" ]; then
        . "$comp_file" 2>/dev/null
        COMPLETION_LOADED="${COMPLETION_LOADED} $cmd"
    fi
}

# Load all completions
_load_all_completions() {
    [ -d "$COMPLETION_DIR" ] || return
    
    for comp_file in "$COMPLETION_DIR"/*.sh; do
        [ -f "$comp_file" ] && . "$comp_file" 2>/dev/null
    done
}

# Hook completion to load on demand
complete -D -F _completion_loader

# Basic completions - always available
_complete_basic() {
    # Complete directories for cd
    complete -d cd pushd popd mkdir rmdir
    
    # Complete commands
    complete -c man which type
    
    # Complete files
    complete -f rm cp mv cat less more head tail grep sed awk
    
    # Complete environment variables
    complete -v export unset local declare typeset
    
    # Complete hostnames (from /etc/hosts if available)
    if [ -f /etc/hosts ]; then
        complete -A hostname ssh scp sftp ping
    fi
}

# Load basic completions
_complete_basic

# Lazy load advanced completions
PROMPT_COMMAND="${PROMPT_COMMAND:+${PROMPT_COMMAND};}_load_all_completions"
