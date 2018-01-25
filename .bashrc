# Sourced by .bash_profile
# Load the default .profile
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" 

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 

export PATH="/usr/local/opt/openssl/bin:$PATH"

# Maven autocompletion
# https://github.com/bobthecow/git-flow-completion/wiki/Install-Bash-git-completion
. ~/.maven_bash_completion.bash

# Prompt colors
reset=$(tput sgr0)
bold=$(tput bold)
black=$(tput setaf 0)
red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
blue=$(tput setaf 4)
magenta=$(tput setaf 5)
cyan=$(tput setaf 6)
white=$(tput setaf 7)
user_color=$green

# Git branch in prompt
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \[\1\]/'
}

# Prompt
export PS1='\h:\w\[$(tput bold)\]$(parse_git_branch)\[$(tput sgr0)\] \$ '

# Aliases
# ----------------------------------------------------------------------
alias m='less'
alias ls='ls -FC'
alias ll='ls -l'
alias la='ls -la'

# Git: https://github.com/Bash-it/bash-it/blob/master/aliases/available/git.aliases.bashs
alias gs='git status'
alias gp='git push'
alias gc='git commit -v'

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
