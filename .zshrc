# Global aliases
alias clip="pbcopy"
alias artisan="php artisan"
alias pest="./vendor/bin/pest"
alias pint="./vendor/bin/pint"
alias gcp="git cherry-pick"
alias gs="git show"
alias blame="git --no-pager blame"
# End global aliases

# Avoid duplicates in history
setopt histignorealldups

# Fish-like autosuggestions for zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
