#!/usr/bin/env bash

# change current directory to root of this repository
DOTFILES_PATH="$(git rev-parse --show-toplevel)"
cd "$DOTFILES_PATH"

# remove symbolic links for dotfiles of the branch given in arguments
BRANCH_NAME="$1"
for dotfile in $(git ls-tree -r --name-only "$BRANCH_NAME" | grep '^\.'); do
    rm -v "$HOME/$dotfile";
    if [[ -f "$HOME/$dotfile.backup" ]]; then
        mv -v "$HOME/$dotfile.backup" "$HOME/$dotfile";
    fi
    rmdir --ignore-fail-on-non-empty $(dirname "$HOME/$dotfile")
done
