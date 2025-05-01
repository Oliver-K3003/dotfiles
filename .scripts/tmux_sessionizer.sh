#!/usr/bin/env bash

# get desired directory (project)
sessionDir=`find ~/projects ~/.config ~/notes -mindepth 1 -maxdepth 1 -type d -not -name ".*" | fzf`

if [[ -z $sessionDir ]]; then
    exit 0
fi

# create session name from path
sessionName=`basename $sessionDir | tr . _`

tmux_alive=`pgrep tmux`

# if tmux is not running
if [[ -z $tmux_alive && -z $TMUX ]]; then
    echo "tmux not running"
    tmux new-session -c $sessionDir -s $sessionName -d
fi

# if tmux is running and session does not exist
if [[ $tmux_alive ]] && [[ `tmux has-session -t $sessionName` != 0 ]];then
    echo "session does not exist"
    tmux new-session -c $sessionDir -s $sessionName -d
fi

# tmux running and session exists
tmux switch-client -t $sessionName
