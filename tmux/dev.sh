#!/usr/bin/env bash

# Detect if tmux and tmuxp are installed
cmds=("tmux" "tmuxp");
for cmd in ${cmds[@]}
do
   if ! command -v $cmd &> /dev/null
   then
       echo "$cmd not found"
       exit
   fi
done

# Kill all the existing sessions
tmux kill-server > /dev/null 2>/dev/null;

sessions=~/Documents/dotfiles/tmux/sessions
for session in `ls $sessions`
do 
	tmuxp load -d "${sessions}/${session}" >/dev/null
done

tmux attach-session -t default;
