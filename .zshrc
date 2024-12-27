# Global aliases
alias clip="pbcopy"
alias artisan="php artisan"
alias pest="./vendor/bin/pest"
alias pint="./vendor/bin/pint"
alias gcp="git cherry-pick"
alias gs="git show"
alias blame="git --no-pager blame"
alias git-append="git commit --amend --no-edit -a"
alias \#='echo -e "\e[90m#$*\e[0m"'
# End global aliases

# Avoid duplicates in history
setopt histignorealldups

# Fish-like autosuggestions for zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Ultimate Git nah
nah () {
    git reset --hard
    git clean -df
    if [ -d ".git/rebase-apply" ] || [ -d ".git/rebase-merge" ]; then
        git rebase --abort
    fi
}
