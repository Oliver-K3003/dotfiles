#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# setup nvm
. /usr/share/nvm/init-nvm.sh

# setup dotfiles sync
alias dotsync='/usr/bin/git --git-dir=/home/oliver/.cfg/ --work-tree=/home/oliver'

HYPRSHOT_DIR='/home/oliver/screenshots'

neofetch
. "$HOME/.cargo/env"

export JAVA_HOME=$HOME/.jdk/jdk-24.0.1
export PATH=$JAVA_HOME/bin:$PATH

export PATH=$HOME/.mvn/maven-mvnd-1.0.2-linux-amd64/mvn/bin:$PATH
