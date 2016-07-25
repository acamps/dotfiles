# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias js_pos="cd ~/Documents/Projects/js_tpv"
alias acamps="cd ~/Documents/Projects/acamps.github.io"
alias kubuk="cd ~/Documents/Projects/kubuk"
alias dotfiles="cd ~/Documents/Projects/dotfiles"
alias intel="cd ~/Documents/Projects/sp-intelligence"
alias queues="cd /Users/albertcamps/Documents/Projects/sp-analytics-log-queue"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx git-extras git-flow node npm rake symfony2 taskwarrior z vi-mode brew zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH
export EDITOR=/usr/local/bin/vim
export SBT_OPTS="-Xmx2G -XX:+UseConcMarkSweepGC -XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=2G -Xss2M  -Duser.timezone=GMT"

alias ga='git add'
alias gaa='git add -A'
alias gp='git push'
alias gl='git log'
alias glo='git log --oneline'
alias gs='git status'
alias gd='git diff'
alias gc='git commit'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gco='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'
alias gta='git tag -a -m'
alias gf='git reflog'
alias diffable_files='git diff --name-only --diff-filter=ACMRTUXB origin/master...'
alias glod='git log --oneline --decorate'
alias gloda='git log --oneline --decorate --all'


alias pun='phpunit'
export DEFAULT_USER=albertcamps
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
alias vw='cd $HOME/vimwiki'
alias rediss='redis-server /usr/local/etc/redis.conf'
alias sayv="say -v 'Vicki'"

export DEFAULT_USER=albertcamps
alias sshb='ssh acamps@sp-backoffice-01.laicosp.net'
alias gaap='git add -A --patch'
export PATH=${PATH}:$HOME/gsutil
alias subl='/Applications/Sublime\ Text.app/Contents/MacOS/Sublime\ Text'
alias vup='vagrant up'
alias vs='vagrant ssh'
alias n4j='cd ~/Documents/Projects/sp-analytics-neo4j-cluster'
alias sz='source ~/.zshrc'
alias gdf="git diff --name-only --diff-filter=ACMRTUXB origin/master..."
export DOCKER_CERT_PATH=/Users/albertcamps/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1
export DOCKER_HOST=tcp://192.168.59.103:2376
alias jnks='java -jar /usr/local/opt/jenkins/libexec/jenkins.war'
source private/aws_keys.txt

