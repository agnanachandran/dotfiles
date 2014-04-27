# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gianu"

# Example aliases
alias zshconfig="vim ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ctags="`brew --prefix`/bin/ctags"
alias del="trash"
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
alias rake='noglob rake'
alias cslinux='ssh a3gnanac@linux.student.cs.uwaterloo.ca'
alias proj='cd ~/Documents/projects'
alias octo='cd ~/Documents/projects/octopress'
alias zero='cd ~/Documents/projects/pluszero'
alias stan='cd ~/Documents/projects/stanford-ios'
alias lrnrails='cd ~/Documents/projects/learn-rails'
alias svblet='cd ~/Documents/projects/svblet'
alias emotive='cd ~/Documents/projects/Emotive'
alias glog="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rails ruby)

# Autojump
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:opt/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:/Users/chronos/sdk/platform-tools
export PATH=/usr/local/bin:$PATH
export PATH=/Applications/Postgres93.app/Contents/MacOS/bin/:$PATH