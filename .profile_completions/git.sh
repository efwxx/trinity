# Git completion
# Branches, remotes, and common subcommands

_complete_git() {
    local subcommands="add bisect blame branch checkout clone commit config \
diff fetch grep init log merge mv pull push rebase reset rm show stash status \
tag update-server-info worktree"
    
    local subcommand="${COMP_WORDS[1]}"
    local cur="${COMP_WORDS[COMP_CWORD]}"
    
    case "$COMP_CWORD" in
        1)
            COMPREPLY=($(compgen -W "$subcommands" -- "$cur"))
            ;;
        2)
            case "$subcommand" in
                checkout|merge|rebase|reset)
                    COMPREPLY=($(compgen -W "$(git branch 2>/dev/null | sed 's/^\*\? //')" -- "$cur"))
                    ;;
                push)
                    COMPREPLY=($(compgen -W "$(git remote 2>/dev/null)" -- "$cur"))
                    ;;
                pull)
                    COMPREPLY=($(compgen -W "$(git remote 2>/dev/null)" -- "$cur"))
                    ;;
                stash)
                    COMPREPLY=($(compgen -W "save pop apply list show drop branch clear" -- "$cur"))
                    ;;
                log)
                    COMPREPLY=($(compgen -W "--oneline --graph --decorate --all --author" -- "$cur"))
                    ;;
                diff)
                    COMPREPLY=($(compgen -W "--staged --stat" -- "$cur"))
                    ;;
                add)
                    COMPREPLY=($(compgen -f -- "$cur"))
                    ;;
            esac
            ;;
    esac
}

complete -F _complete_git git
