# Package manager completion
# apt, yum, dnf, pacman, apk, opkg

_complete_pkg() {
    local cur="${COMP_WORDS[COMP_CWORD]}"
    local pkg_commands=""
    
    # Detect package manager
    if command -v apt-get >/dev/null 2>&1; then
        pkg_commands="update upgrade install remove purge search show autoremove"
        complete -F _complete_pkg apt apt-get
    fi
    
    if command -v yum >/dev/null 2>&1; then
        pkg_commands="install remove update search info list history"
        complete -F _complete_pkg yum
    fi
    
    if command -v dnf >/dev/null 2>&1; then
        pkg_commands="install remove update search info list history"
        complete -F _complete_pkg dnf
    fi
    
    if command -v pacman >/dev/null 2>&1; then
        pkg_commands="update upgrade install remove search info list query"
        complete -F _complete_pkg pacman
    fi
    
    if command -v apk >/dev/null 2>&1; then
        pkg_commands="add del update search info list"
        complete -F _complete_pkg apk
    fi
    
    if command -v opkg >/dev/null 2>&1; then
        pkg_commands="update install remove search info list"
        complete -F _complete_pkg opkg
    fi
}

_complete_pkg
