#!/usr/bin/env bash

# change current directory to root of this repository
DOTFILES_PATH="$(git rev-parse --show-toplevel)"
cd "$DOTFILES_PATH"

# create symbolic links for dotfiles of the branch given in arguments
BRANCH_NAME="$1"
for dotfile in $(git ls-tree -r --name-only "$BRANCH_NAME" | grep '^\.'); do
    if [[ -f "$HOME/$dotfile" && ! -L "$HOME/$dotfile" ]]; then
        mv -v "$HOME/$dotfile" "$HOME/$dotfile.backup"
    fi
    mkdir -p $(dirname "$HOME/$dotfile")
    ln -sv "$DOTFILES_PATH/$dotfile" "$HOME/$dotfile"
done
