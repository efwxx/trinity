# Core plugin - loaded first
# Sets up environment variables and basics

# History configuration
export HISTFILE="$HOME/.sh_history"
export HISTSIZE=5000
export HISTFILESIZE=10000
export HISTCONTROL="ignoredups:erasedups"
shopt -s histappend 2>/dev/null

# Share history across sessions
export PROMPT_COMMAND="history -a; history -n; $PROMPT_COMMAND"

# Better shell behavior
shopt -s cdspell 2>/dev/null       # Correct cd typos
shopt -s dirspell 2>/dev/null     # Correct filename typos
shopt -s globasciiranges 2>/dev/null  # ASCII ranges in glob
shopt -s checkwinsize 2>/dev/null # Update LINES/COLUMNS

# Color support
export CLICOLOR=1
export LS_COLORS='di=1;34:ln=1;36:so=1;35:pi=1;33:ex=1;32:bd=1;33:cd=1;33:su=1;31:sg=1;31:tw=1;34:ow=1;34'

# PATH configuration
export PATH="$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH"
export EDITOR=vi
