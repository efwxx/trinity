# Bug Report Template

## Expected Behavior
_A clear description of what you expected to happen._

## Actual Behavior
_What actually happened instead._

## Steps to Reproduce
1. 
2. 
3. 

## Environment
- **OS**: 
- **Shell**: 
- **Shell Version**: 
- **Profile Version**: (commit hash or `git log -1 --oneline`)

## Relevant Configuration
```bash
# Output of these commands helps a lot:
echo $SHELL
echo $BASH_VERSION
echo $BASH_VERSION 2>/dev/null || echo "Not bash"
uname -a
```

## Error Output
```
# Paste any error messages here
```

## Additional Context
_Anything else that might be relevant (terminal emulator, theme used, etc.)_

---

## For Completion-Related Bugs

```bash
# Please also include:
compgen -c | head -10   # List available completions
complete -p              # Show active completion bindings
```

## For Theme-Related Bugs

```bash
# Include:
echo $SHELL_THEME
echo $PS1
```

## For Plugin Bugs

```bash
# Include:
ls -la ~/.dotfiles/.profile.d/
ls -la ~/.profile.d/
# Which plugins are loaded?
```

---

Thank you for reporting bugs!
