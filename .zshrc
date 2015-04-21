# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
 CASE_SENSITIVE="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
 HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

plugins=(git rails ruby bundler osx)

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"
# Android
export PATH=${PATH}:~/dev/android-sdk-macosx/tools
#export JAVA_HOME="/Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/bin/java"
#export JAVA_HOME="/usr/libexec/java_home"
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
source $ZSH/oh-my-zsh.sh


# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Rbenv
#export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

#Postgres.app
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin

## Aliases
alias cdl="cd ~/dev/rails/lupine"
alias cdr="cd ~/dev/rails"

alias resetdb="bundle exec rake db:drop && rake db:create && rake db:schema:load && rake db:populate && rake db:test:prepare"

alias gs="git status"
alias gl="git log"
alias gb="git branch"
alias ga="git add -A"
alias gc="git commit"
alias wip="git commit -m 'wip'"
alias vi="mvim"
alias killwebrick="kill -9 $(lsof -i tcp:3000 -t)"
alias please='sudo $(fc -ln -1)'

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
