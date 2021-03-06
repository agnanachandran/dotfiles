# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gianu"

# Example aliases
alias zshconfig="vim ~/.zshrc"
alias ctags="`brew --prefix`/bin/ctags"
alias del="trash"
alias vi='vim'
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
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(blue)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

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

export GEM_HOME=$HOME/.gem
export GEM_PATH=$HOME/.gem
export PATH=$PATH:opt/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:/Users/chronos/sdk/platform-tools
PATH=/Applications/Postgres93.app/Contents/MacOS/bin:$PATH
PATH=/usr/local/bin:$PATH
alias gcc="gcc-4.8"
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/opt/X11/lib/pkgconfig


# Setup zsh-autosuggestions
#source /Users/chronos/.zsh-autosuggestions/autosuggestions.zsh

## Enable autosuggestions automatically
#zle-line-init() {
    #zle autosuggest-start
#}

#zle -N zle-line-init

## use ctrl+t to toggle autosuggestions(hopefully this wont be needed as
## zsh-autosuggestions is designed to be unobtrusive)
#bindkey '^T' autosuggest-toggle

## Autocomplete stuff
#AUTOSUGGESTION_HIGHLIGHT_COLOR='fg=14'

