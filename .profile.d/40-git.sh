# Git plugin
# Git prompt integration and aliases

export GIT_PROMPT_ENABLE="${GIT_PROMPT_ENABLE:-1}"

# Git prompt symbols
GIT_PROMPT_CLEAN="✓"
GIT_PROMPT_DIRTY="✗"
GIT_PROMPT_STAGED="●"
GIT_PROMPT_UNSTAGED="±"
GIT_PROMPT_STASH="⚑"
GIT_PROMPT_UNTRACKED="?"

# Get git branch
__git_branch() {
    git branch 2>/dev/null | grep '^\*' | cut -d' ' -f2
}

# Get git status
__git_status() {
    if ! git rev-parse --git-dir >/dev/null 2>&1; then
        return
    fi
    
    local branch=$(__git_branch)
    local status=""
    
    # Count statuses
    local staged unstaged untracked stash
    
    staged=$(git status --porcelain 2>/dev/null | grep -c '^M\|^A' || echo "0")
    unstaged=$(git status --porcelain 2>/dev/null | grep -c '^.[M]' || echo "0")
    untracked=$(git status --porcelain 2>/dev/null | grep -c '^??' || echo "0")
    stash=$(git stash list 2>/dev/null | grep -c . || echo "0")
    
    # Build status string
    [ "$staged" -gt 0 ] && status="${status}${GIT_PROMPT_STAGED}${staged}"
    [ "$unstaged" -gt 0 ] && status="${status}${GIT_PROMPT_UNSTAGED}${unstaged}"
    [ "$untracked" -gt 0 ] && status="${status}${GIT_PROMPT_UNTRACKED}${untracked}"
    [ "$stash" -gt 0 ] && status="${status}${GIT_PROMPT_STASH}${stash}"
    
    if [ -n "$status" ]; then
        printf " ${THEME_HOST}[${THEME_PATH}%s${THEME_HOST}|${THEME_CMD_INVALID}%s${THEME_HOST}]${THEME_RESET}" "$branch" "$status"
    else
        printf " ${THEME_HOST}[${THEME_CMD_VALID}%s${THEME_HOST}]${THEME_RESET}" "$branch"
    fi
}

# Update prompt with git info
__git_prompt() {
    if [ "$GIT_PROMPT_ENABLE" = "1" ]; then
        __git_status
    fi
}

# Add git info to PROMPT_COMMAND
if [ -n "$BASH_VERSION" ]; then
    export PROMPT_COMMAND="${PROMPT_COMMAND:+${PROMPT_COMMAND};}__git_prompt"
fi

# Git aliases
alias g='git'
alias gst='git status -sb'
alias gs='git status'
alias ga='git add'
alias gaa='git add -A'
alias gc='git commit'
alias gcm='git commit -m'
alias gca='git commit --amend'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gcl='git clone'
alias gf='git fetch'
alias gp='git push'
alias gpf='git push -f'
alias gpu='git pull'
alias gr='git rebase'
alias gra='git rebase --abort'
alias grc='git rebase --continue'
alias gm='git merge'
alias gd='git diff'
alias gdc='git diff --cached'
alias gds='git diff --staged'
alias gl='git log --oneline --graph --decorate --all'
alias gls='git log --oneline'
alias glast='git last'
alias gcount='git shortlog -sn'
alias gignored='git status --ignored'
alias gclean='git clean -fd'
alias gundo='git reset --soft HEAD~1'
alias gfix='git commit --amend --no-edit'
alias gstats='git diff --stat'
alias gwho='git shortlog --email'
alias gsh='git show'
alias gbl='git blame'
alias gtag='git tag'
alias gtags='git tag -l'

# Show untracked files
alias ggu='git ls-files --others --exclude-standard'

# Stash aliases
alias gss='git stash save'
alias gsp='git stash pop'
alias gsl='git stash list'
alias gsd='git stash drop'

# Worktree
alias gwt='git worktree'
alias gwta='git worktree add'
alias gwtl='git worktree list'
alias gwtp='git worktree prune'
