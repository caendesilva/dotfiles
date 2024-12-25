# This command only needs to be run once, and configures my Git settings
# Tip: Use `git config --global --list` to list active settings

# Add a `git append` command to add the current changes to the last commit
git config --global alias.append "commit --amend --no-edit -a"

# Add a `git undo` command that undos the last commit, keeping its changes
git config --global alias.undo "reset --soft HEAD~1"

# Add a `git combine` command to combine the last commit into the one before it
git config --global alias.combine '!sh -c "git reset --soft HEAD~ && git commit --amend --no-edit"'

# Use Nano as default Git editor
git config --global core.editor "nano"

# Configure global .gitignore
git config --global core.excludesfile "~/.config/git/ignore"

# Automatically create remote branches
git config --global --type bool push.autoSetupRemote true

# Set up global .gitignore file
mkdir -p ~/.config/git && touch ~/.config/git/ignore

# Globally ignore .DS_Store
echo \.DS_Store >>  ~/.config/git/ignore
