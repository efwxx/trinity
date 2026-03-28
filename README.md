# Trinity

A feature-rich, POSIX-compliant shell profile that works on (almost) all shells. Designed for Linux systems from desktops to embedded SBCs (tested on Ubuntu 25.04, Onion Omega2+ with BusyBox and MacOS Ventura).

**No external dependencies required.** Everything works out of the box.

---

## Features

### Core
- **Syntax Highlighting** - Real-time command highlighting as you type
- **7 Themes** - Dracula, Nord, Gruvbox, Catppuccin, Tokyo Night, Monokai, Solarized
- **Custom Neofetch** - System info with theme-matched ASCII art

### Navigation
- **Fuzzy CD** - Jump to directories with partial names (`cdf partial`)
- **Autojump** - Learns your habits, `j partial` jumps to frequently visited dirs
- **Smart CDPATH** - Tab-complete from all CDPATH directories
- **Directory Stack** - `d` shows numbered recent directories, `cd -N` jumps to them

### History
- **Shared History** - Commands sync across all terminal sessions instantly
- **Auto-suggestions** - Fish-style prefix matching from history (shows in dim text)
- **History Search** - Press `Ctrl+R` and type to filter
- **History Stats** - `hist` shows your most used commands

### Git
- **Git Prompt** - Shows branch, dirty state, stash count in your prompt
- **Git Aliases** - Shortcuts for common commands (`gst`, `gco`, `gl`, etc.)
- **Works offline** - No git required, gracefully degrades

### Completions
- **Custom Completion System** - Built-in bash completion (no package needed)
- **Smart Completions** - For git, ssh, scp, kill, cd, make, and package managers
- **Lazy Loading** - Completions load on demand

### Extras
- **Global Aliases** - `G` for grep, `L` for less, `H` for head, `T` for tail
- **Spelling Correction** - `cdspell` auto-fixes cd typos
- **Vi Mode** - Press `jj` to exit insert mode
- **Plugin System** - Drop scripts in `~/.profile.d/` for easy organization

---

## Installation

### Quick Install

```bash
# Clone the repo
git clone https://github.com/efwxx/dotfiles.git ~/.dotfiles

# Link the profile
ln -sf ~/.dotfiles/profile ~/.profile

# Source it
source ~/.profile
```

### Manual Install

```bash
# Backup your existing profile
cp ~/.profile ~/.profile.bak

# Copy this repo's profile to your home
cp profile ~/.profile

# Start a new shell or source it
source ~/.profile
```

### For Bash
```bash
echo '[[ -f ~/.profile ]] && . ~/.profile' >> ~/.bashrc
```

---

## Configuration

### Changing Themes

```bash
theme                    # Show current theme
theme nord              # Switch to Nord
theme gruvbox           # Switch to Gruvbox
and so on...
```

### Available Themes
- `dracula` - Purple/pink (default)
- `nord` - Arctic blue/white
- `gruvbox` - Retro brown/green
- `mocha` - Dark mocha catppuccin variant
- `macchiato` - Medium macchiato catppuccin variant
- `frappe` - Frappe catppuccin variant
- `latte` - Light latte catppuccin variant
- `tokyo` - Tokyo Night
- `monokai` - Classic Monokai
- `solarized` - Solarized light/dark

### Disabling Features

Some features can be toggled:

```bash
# Disable real-time syntax highlighting
unset RTSH_ENABLE

# Disable git prompt integration
unset GIT_PROMPT_ENABLE
```

---

## Plugin System

This profile has a modular plugin system. Plugins are shell scripts that get loaded automatically on shell startup.

### How Plugins Work

Plugins are loaded from these directories in order:
1. `~/.profile.d/`
2. `~/.dotfiles/.profile.d/`

The plugin loader (`60-plugin-loader.sh`) does the following:
1. Scans for `.profile.d/` directories
2. Loads all `*.sh` files in each directory
3. Files are loaded in alphabetical order (hence the `10-`, `20-`, etc. prefixes)

### Creating a Plugin

Create a new file in `~/.profile.d/` or `~/.dotfiles/.profile.d/`:

```bash
# ~/.profile.d/90-my-plugin.sh

# Give it a descriptive name
# Variables and functions defined here are available in your shell

# You can use all theme colors
echo "My plugin loaded! Theme is: $SHELL_THEME"

# Define functions
my_custom_function() {
    echo "Hello from my plugin!"
}

# Set aliases
alias myalias='echo "Custom alias"'

# Export variables
export MY_CUSTOM_VAR="value"
```

### Plugin Numbering

The numbers at the start of plugin names control load order:

| Prefix | Purpose |
|--------|---------|
| `10-`  | Core settings (PATH, history config) |
| `20-`  | Navigation features |
| `30-`  | History features |
| `40-`  | Git integration |
| `50-`  | Completions |
| `60-`  | Plugin loader itself |
| `90-`  | User custom plugins |

### Built-in Plugins

| Plugin | Lines | Description |
|--------|-------|-------------|
| `10-base.sh` | 26 | History settings, PATH, EDITOR |
| `20-navigation.sh` | 118 | Fuzzy cd, autojump, directory stack |
| `30-history.sh` | 105 | Shared history, autosuggestions |
| `40-git.sh` | 112 | Git aliases, git prompt |
| `50-completions.sh` | 62 | Completion system |
| `60-plugin-loader.sh` | 52 | Plugin loader + helper functions |

### Plugin Helper Functions

When plugins are loaded, these functions become available:

```bash
# List loaded plugins
plugin_list

# Reload all plugins
plugin_reload
```

### Disabling Plugins

To temporarily disable a plugin, rename it:

```bash
mv ~/.profile.d/40-git.sh ~/.profile.d/40-git.sh.disabled
```

Or move custom plugins to a separate directory:

```bash
mkdir ~/.my-plugins/
mv ~/.profile.d/my-custom.sh ~/.my-plugins/
# Then manually load: . ~/.my-plugins/my-custom.sh
```

### Writing Compatible Plugins

For plugins that work on both bash and ash:

```bash
# Good: Check for bash before using bash-specific features
if [ -n "$BASH_VERSION" ]; then
    # Bash-only code here
    set -o vi
fi

# Good: Use POSIX-compatible syntax
[ -z "$var" ] && echo "empty"
[ -n "$var" ] && echo "not empty"

# Avoid:
# - [[ ]] (bash-only)
# - (( )) (bash arithmetic)
# - function keyword (deprecated, but portable)
# - Process substitution <() (bash-only)
```

### Sharing Plugins

Want to share a plugin? Drop it in `~/.profile.d/` with a descriptive name and it will be loaded on next shell start.

---

## Completion Modules

Completions are stored in `.profile_completions/` and provide tab-completion for various commands.

### How Completions Work

1. `50-completions.sh` sets up the completion system
2. Completion functions in `.profile_completions/*.sh` define completion rules
3. When you press Tab, bash uses these rules

### Built-in Completions

| Completion | What it completes |
|------------|-------------------|
| `git.sh` | Branches, remotes, subcommands |
| `ssh.sh` | Hosts from ~/.ssh/config |
| `scp.sh` | Remote file paths |
| `kill.sh` | Process names and signals |
| `cd.sh` | Directories from CDPATH |
| `make.sh` | Targets from Makefile |
| `pkg.sh` | Packages for apt/yum/pacman/etc |

### Creating Completions

```bash
# ~/.profile_completions/mycmd.sh

_complete_mycmd() {
    local cur="${COMP_WORDS[COMP_CWORD]}"
    
    # Complete with these words
    COMPREPLY=($(compgen -W "start stop restart status" -- "$cur"))
}

# Register the completion
complete -F _complete_mycmd mycmd
```

### Completion Variables

Inside a completion function:
- `${COMP_WORDS[@]}` - Array of words on the command line
- `${COMP_CWORD}` - Index of current word being completed
- `${COMP_LINE}` - Full command line
- `COMPREPLY` - Array of completions to offer

---

## File Structure

```
~/.dotfiles/
├── profile                      # Main profile
├── README.md                    # This file
├── .github/
│   └── ISSUE_TEMPLATE/
│       ├── bug_report.md       # Bug report template
│       └── feature_request.md   # Feature request template
├── .profile.d/                 # Built-in plugins
│   ├── 10-base.sh
│   ├── 20-navigation.sh
│   ├── 30-history.sh
│   ├── 40-git.sh
│   ├── 50-completions.sh
│   └── 60-plugin-loader.sh
└── .profile_completions/       # Completion modules
    ├── git.sh
    ├── ssh.sh
    ├── scp.sh
    ├── kill.sh
    ├── cd.sh
    ├── make.sh
    └── pkg.sh
```

### Auto-Created Files

These files are created automatically:

| File | Purpose |
|------|---------|
| `~/.sh_history` | Shared command history |
| `~/.cdhistory` | Directory visit tracking for autojump |

---

## Requirements

### Minimal (Everything Works)
- bash or ash
- grep, sed, awk
- find, cut, tr

### For Git Features
- `git`

### For Enhanced Fuzzy Matching (Optional)
- `fzf`

### For Enhanced Autojump (Optional)
- `zoxide`

Everything else is optional and will be auto-detected.

---

## Usage Tips

### Navigation

```bash
cdf foo        # Fuzzy find and cd into directory containing "foo"
j bar          # Jump to most visited directory matching "bar"
d              # Show directory stack
cd -2          # Go to 2nd directory in stack
..             # cd .. (already exists)
...            # cd ../.. (already exists)
```

### Global Aliases

```bash
ps aux G nginx   # Pipe to grep
cat file L        # Pipe to less
ls H              # Pipe to head
```

### History

```bash
# Type a command prefix, press Ctrl+R repeatedly to cycle matches
# Or use the autosuggestion (shown dimmed, press right arrow to accept)

hist              # Show history statistics
hist 20           # Show top 20 commands
```

### Git

```bash
gst               # git status -sb
gco main          # git checkout main
gcb newbranch     # git checkout -b newbranch
gl                # git log with graph
gp                # git push
ga                # git add
gc "message"      # git commit -m "message"
```

---

## Compatibility

Tested and working on:
- Ubuntu / Debian
- Arch Linux
- macOS
- OpenWRT (ash)
- Alpine Linux
- Android (Termux)

---

## Contributing

Found a bug? Want a feature? Open an issue or PR.

1. Fork it
2. Create your feature branch
3. Make your changes
4. Test on a minimal system (like OpenWRT)
5. Submit a PR

---

## License

MIT - Do whatever you want with it.

---

## Credits

Built from scratch with love. Shell scripting is underrated.

**No frameworks harmed in the making of this profile.**
