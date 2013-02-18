# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if [[ -f $hub_path ]]
then
  alias git=$hub_path
fi

# The rest of my fun git aliases
alias gl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin HEAD'
alias gd='git diff'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gb='git branch'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
alias commit='~/.dotfiles/git/commit.rb'
alias gcd="git checkout "

# Git Flow Changes
alias ticket='~/.dotfiles/git/new_ticket.rb'
alias ctmwebb='~/.dotfiles/git/new_ticket.rb -p CTMWEB -b'
alias ctmwebf='~/.dotfiles/git/new_ticket.rb -p CTMWEB -f'
alias tssb='~/.dotfiles/git/new_ticket.rb -p TSS -b'
alias tssf='~/.dotfiles/git/new_ticket.rb -p TSS -f'

alias pull=git-up
alias push=gp

alias standup="git log --since '1 day ago' --no-merges --pretty=format':%C(yellow)%h %aN%n %B%n' --oneline --author Andrew"
alias sufriday="git log --since '4 day ago' --no-merges --pretty=format':%C(yellow)%h %aN%n %B%n' --oneline --author Andrew"