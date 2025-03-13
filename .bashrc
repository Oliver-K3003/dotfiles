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

neofetch
alias dotsync='usr/bin/git --git-dir=/home/oliver/.cfg/ --work-tree=/home/oliver'
