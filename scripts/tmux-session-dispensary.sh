#!/usr/bin/env bash

DIRS=(
    "$HOME/src"
    "$HOME/src/trustap"
    "$HOME/src/dotfiles"
)

if [[ $# -eq 1 ]]; then
    selected=$1
else
    selected=$(fd "${DIRS[@]}" --type=dir --max-depth=1 --full-path \
        | sed -e "s|^$HOME/||" -e "s|/$||" \
        | sk --margin 10% --color="bw")
    if [[ $selected ]]; then
        selected="$HOME/$selected"
    fi
fi

if [[ ! $selected ]]; then
    exit 0
fi

selected_name=$(basename "$selected" | tr . _)

if  ! tmux has-session -t "$selected_name" 2> /dev/null; then
    tmux new-session -ds "$selected_name" -c "$selected"
    tmux select-window -t "$selected_name:1"
fi

if [ -n "$TMUX" ]; then
    tmux switch-client -t "$selected_name"
else
    tmux attach-session -t "$selected_name"
fi
