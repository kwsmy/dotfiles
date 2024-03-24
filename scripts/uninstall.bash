#!/usr/bin/env bash

cd "$(dirname "$0")"
BRANCH_NAME="$1"
DOTFILES_PATH="$(git rev-parse --show-toplevel)"

for dotfile in $(git ls-tree -r --full-tree --name-only "$BRANCH_NAME" | grep '^\.'); do
    rm -v "$HOME/$dotfile";
    if [[ -f "$HOME/$dotfile.backup" ]]; then
        mv -v "$HOME/$dotfile.backup" "$HOME/$dotfile";
    fi
    rmdir --ignore-fail-on-non-empty $(dirname "$HOME/$dotfile")
done
