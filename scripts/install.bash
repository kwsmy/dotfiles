#!/usr/bin/env bash

cd "$(dirname "$0")"
BRANCH_NAME="$1"
DOTFILES_PATH="$(git rev-parse --show-toplevel)"

for dotfile in $(git ls-tree -r --full-tree --name-only "$BRANCH_NAME" | grep '^\.'); do
    if [[ -f "$HOME/$dotfile" && ! -L "$HOME/$dotfile" ]]; then
        mv -v "$HOME/$dotfile" "$HOME/$dotfile.backup"
    fi
    mkdir -p $(dirname "$HOME/$dotfile")
    ln -sv "$DOTFILES_PATH/$dotfile" "$HOME/$dotfile"
done
