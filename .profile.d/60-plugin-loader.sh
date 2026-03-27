# Plugin loader
# Loads plugins from ~/.profile.d/ and ~/.dotfiles/.profile.d/

_profile_load_plugins() {
    local plugin_dirs=""
    
    # Check for plugins in various locations
    [ -d "$HOME/.profile.d" ] && plugin_dirs="$plugin_dirs $HOME/.profile.d"
    [ -d "$HOME/.dotfiles/.profile.d" ] && plugin_dirs="$plugin_dirs $HOME/.dotfiles/.profile.d"
    
    for dir in $plugin_dirs; do
        for plugin in "$dir"/*.sh; do
            [ -f "$plugin" ] && . "$plugin" 2>/dev/null
        done
    done
}

# Load plugins
_profile_load_plugins

# Plugin helper functions
plugin_list() {
    echo ""
    echo "${THEME_BOLD}${THEME_SUBTITLE}Loaded Plugins:${THEME_RESET}"
    echo ""
    
    local plugin_dirs="$HOME/.profile.d $HOME/.dotfiles/.profile.d"
    
    for dir in $plugin_dirs; do
        if [ -d "$dir" ]; then
            echo "  ${THEME_PATH}$dir${THEME_RESET}:"
            for plugin in "$dir"/*.sh; do
                if [ -f "$plugin" ]; then
                    local name=$(basename "$plugin" .sh)
                    echo "    ${THEME_CMD_VALID}✓${THEME_RESET} $name"
                fi
            done
            echo ""
        fi
    done
}

plugin_reload() {
    # Unset all plugin-defined functions and variables
    unset -f _profile_load_plugins 2>/dev/null
    unset -f plugin_list plugin_reload 2>/dev/null
    
    # Reload
    _profile_load_plugins
    
    echo "Plugins reloaded."
}
