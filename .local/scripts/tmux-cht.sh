#!/usr/bin/env bash

selected=`cat ~/.tmux-cht-languages ~/.tmux-cht-command | fzf --reverse`
if [[ -z $selected ]]; then
    exit 0
fi

echo "Selected: $selected" 
read -p "Enter Query: " query

if grep -qs "$selected" ~/.tmux-cht-languages; then
    query=`echo $query | tr ' ' '+'`
    tmux split-window -h zsh -c "curl cht.sh/$selected/$(echo "$query" | tr " " "+") | less"
else
    tmux split-window -h zsh -c "curl -s cht.sh/$selected~$query | less"
fi
