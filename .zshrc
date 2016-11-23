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

source $ZSH/oh-my-zsh.sh

export EDITOR='vim'

#rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
eval "$(rbenv init -)"

## Aliases
alias gs="git status"
alias gl="git log"
alias gb="git branch"
alias ga="git add -A"
alias gc="git commit"
alias wip="git commit -m 'wip'"
#alias vi="mvim"
#alias vi="gnome-terminal --window-with-profile=Vim -x vim"
alias vi="gvim"
alias please='sudo $(fc -ln -1)'
alias importdb="pg_restore --verbose --clean --no-acl --no-owner -h localhost"
alias gsquash="git rebase -i HEAD~2"
alias resetgit="git add -A && git stash save && git stash drop"


### Golang
#export PATH=$PATH:/usr/local/opt/go/libexec/bin
#export GOPATH=$HOME/dev/go
#export PATH=$PATH:$GOPATH/bin

# Vim mode indicator
bindkey -v
export KEYTIMEOUT=1
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

# Set up history
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
bindkey \C-R history-incremental-search-backward
