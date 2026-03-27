# Contributing to Malice's Shell Profile

Thanks for your interest in contributing! Here are some guidelines to help you get started.

## Code Style

### Shell Scripting Best Practices

- Use POSIX-compatible syntax when possible
- Use `#!/bin/sh` or `#!/bin/bash` with proper guards
- Indent with 4 spaces
- Maximum line length: 100 characters (soft limit)
- Quote variables: `"$var"` not `$var`

### Good Examples

```bash
# Correct: quote variables
if [ -n "$some_var" ]; then
    echo "Value: $some_var"
fi

# Correct: use local for function variables
my_function() {
    local input="$1"
    local result=""
    # ...
}

# Correct: check command existence
if command -v some_command >/dev/null 2>&1; then
    some_command
fi
```

### Avoid

```bash
# Bad: unquoted variables
if [ -n $some_var ]; then  # Breaks on empty strings
    echo $some_var  # Word splitting issues
fi

# Bad: global variables in functions
my_function() {
    result="something"  # Should be local
}

# Bad: pipes can hide errors
some_command | another_command  # Use set -o pipefail
```

## Testing

### Manual Testing Checklist

Before submitting a PR, test these scenarios:

- [ ] Source the profile in a new shell: `bash -c '. profile'`
- [ ] Test on ash (e.g., OpenWRT): `ash -c '. profile'`
- [ ] Check for syntax errors: `bash -n profile`
- [ ] Verify no new dependencies added
- [ ] Test your new feature/fix

### Syntax Checking

```bash
# Check bash syntax
bash -n profile
bash -n .profile.d/*.sh

# Check with shellcheck (if available)
shellcheck profile
```

## Pull Request Process

1. **Fork the repo** and create your branch from `main`
2. **Name your branch** descriptively: `feature/fuzzy-docker` or `fix/theme-switch`
3. **Make your changes** - keep them focused and small
4. **Test thoroughly** - especially on minimal systems
5. **Update docs** if you add new features
6. **Submit PR** with a clear description

## Types of Contributions

### Bug Fixes
- Include steps to reproduce
- Test on multiple shells (bash, ash)
- Keep fix minimal and focused

### New Features
- Discuss large features in an issue first
- Ensure backward compatibility
- Add documentation
- Consider portability (bash vs ash)

### Plugins
- Follow naming convention: `NN-name.sh`
- Add comments explaining what it does
- Use theme variables for colors
- Avoid hardcoding paths

### Completions
- Follow existing patterns
- Handle edge cases
- Support multiple completion contexts

## Ideas for Contributions

- More completion modules
- Additional themes
- Integration with other tools (docker, kubectl, etc.)
- Performance improvements
- More robust error handling

## Questions?

Open an issue if you have questions!
