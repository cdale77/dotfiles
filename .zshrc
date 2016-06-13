# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
 CASE_SENSITIVE="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
 HIST_STAMPS="mm/dd/yyyy"

plugins=(git rails ruby bundler osx)

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

#https://gist.github.com/DanHerbert/9520689
export PATH="$HOME/.node/bin:$PATH"

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='mvim'
 fi

#rbenv
eval "$(rbenv init -)"

#Postgres.app
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

## Aliases
alias cdl="cd ~/dev/rails/lupine"
alias cdr="cd ~/dev/rails"

alias gs="git status"
alias gl="git log"
alias gb="git branch"
alias ga="git add -A"
alias gc="git commit"
alias wip="git commit -m 'wip'"
alias vi="mvim"
alias killwebrick="kill -9 $(lsof -i tcp:3000 -t)"
alias please='sudo $(fc -ln -1)'
alias importdb="pg_restore --verbose --clean --no-acl --no-owner -h localhost"
alias gsquash="git rebase -i HEAD~2"
alias resetgit="git add -A && git stash save && git stash drop"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Golang
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export GOPATH=$HOME/dev/go
export PATH=$PATH:$GOPATH/bin

bindkey -v
export KEYTIMEOUT=1

# Vim mode indicator
precmd() {
  RPROMPT=""
}
zle-keymap-select() {
  RPROMPT=""
  [[ $KEYMAP = vicmd ]] && RPROMPT="(CMD)"
  () { return $__prompt_status }
  zle reset-prompt
}
zle-line-init() {
  typeset -g __prompt_status="$?"
}
zle -N zle-keymap-select
zle -N zle-line-init
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
