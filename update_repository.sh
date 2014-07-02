#!/bin/bash

# Copy the latest versions of the dotfiles into the git repository.

ALL_DOT_FILES=(
    '.bashrc'
    '.gitconfig'
    '.vimrc'
)

for F in "${ALL_DOT_FILES[@]}"; do
    BEFORE=$(md5sum "$F" 2>/dev/null)

    cp "$HOME/$F" "$F"

    AFTER=$(md5sum "$F" 2>/dev/null)

    if [[ "$BEFORE" == "$AFTER" ]]; then
        printf 'Unchanged: %s\n' "$F"
    else
        printf 'Updated  : %s\n' "$F"
    fi
done
