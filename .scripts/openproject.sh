#!/usr/bin/env bash

contents=`ls -d $HOME/projects/* && ls -d $HOME/.config/* &&  ls -d $HOME/*`

selected=`echo "$contents" | fzf`

tmux neww -b -c $selected
