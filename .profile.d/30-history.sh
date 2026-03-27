# History plugin
# Shared history, autosuggestions, history search

# Shared history - append immediately, read on open
export HISTTIMEFORMAT="%Y-%m-%d %H:%M:%S  "
export HISTIGNORE="ls:cd:cd -:pwd:exit:clear:history"

# Autosuggestion variables
export AUTOSUGGEST_ENABLE=1
export AUTOSUGGEST_PREFIX=$'\033[2m'     # Dim
export AUTOSUGGEST_SUFFIX=$'\033[0m'

# History search with fzf fallback
_hISTS_FZF_FOUND=""

_hISTS_search() {
    local selected
    if command -v fzf >/dev/null 2>&1; then
        selected=$(history | fzf --height=50% --reverse --prompt "> " --query "$READLINE_LINE")
    else
        selected=$(history | grep -i "$READLINE_LINE" | tail -20 | head -1)
    fi
    
    if [ -n "$selected" ]; then
        local num="${selected%% *}"
        history -s "$num"
    fi
}

# Bind Ctrl+R to history search
if [ -n "$BASH_VERSION" ]; then
    bind -x '"\C-r": _hISTS_search'
fi

# Autosuggestion wrapper - shows suggestion in dim text
_autosuggest_accept() {
    local suggestion
    suggestion=$(history 2>/dev/null | grep "^[[:space:]]*[0-9]*[[:space:]]*${READLINE_LINE}" | tail -1 | sed "s/^[[:space:]]*[0-9]*[[:space:]]*//")
    
    if [ -n "$suggestion" ] && [ "$suggestion" != "$READLINE_LINE" ]; then
        READLINE_LINE="$suggestion"
        READLINE_POINT=${#suggestion}
    fi
}

# Bind right arrow to accept suggestion
if [ -n "$BASH_VERSION" ]; then
    bind -x '"\e\[C": _autosuggest_accept'
fi

# History statistics
hist() {
    local n="${1:-10}"
    local count=0
    
    echo ""
    echo "${THEME_BOLD}${THEME_SUBTITLE}Top $n Commands:${THEME_RESET}"
    echo ""
    
    if [ -f "$HISTFILE" ]; then
        tail -1000 "$HISTFILE" 2>/dev/null | \
            awk '{print $1}' | \
            sort | \
            uniq -c | \
            sort -rn | \
            head -"$n" | \
            while read num cmd; do
                count=$((count + 1))
                printf "  %2d. ${THEME_CMD_VALID}%-20s${THEME_RESET} ${THEME_HOST}%s${THEME_RESET}\n" "$count" "$cmd" "$num uses"
            done
    fi
    
    echo ""
    echo "${THEME_BOLD}${THEME_SUBTITLE}Most Visited Dirs:${THEME_RESET}"
    echo ""
    
    if [ -f "$HOME/.cdhistory" ]; then
        tail -500 "$HOME/.cdhistory" 2>/dev/null | \
            sort | \
            uniq -c | \
            sort -rn | \
            head -"$n" | \
            while read num dir; do
                count=$((count + 1))
                printf "  %2d. ${THEME_PATH}%-40s${THEME_RESET} ${THEME_HOST}%s${THEME_RESET}\n" "$count" "$dir" "$num visits"
            done
    fi
    
    echo ""
}

# Show recent history
alias h='history'

# Clear duplicate history entries
histclean() {
    if [ -f "$HISTFILE" ]; then
        local tmp=$(mktemp)
        tac "$HISTFILE" | awk '!x[$0]++' | tac > "$tmp" && mv "$tmp" "$HISTFILE"
        echo "Duplicate history entries removed."
    fi
}

# Export history immediately after each command
PROMPT_COMMAND="${PROMPT_COMMAND:+${PROMPT_COMMAND};}history -a"
