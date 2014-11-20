#!/bin/bash

# Copy the latest versions of the dotfiles into the git reposifry.

ALL_DOT_FILES=(
    '.bashrc'
    '.gitconfig'
    '.gitignore'
    '.selected_editor'
    '.ssh/config'
    '.vimrc'
)

Main(){
    for f in "${ALL_DOT_FILES[@]}"; do
        if cmp -s "$HOME/$f" "$f"; then
            printf 'Unchanged       : %s\n' "$f"
        else
            mkdir -p $(dirname "$f")
            cp "$HOME/$f" "$f"
   
            if cmp -s "$HOME/$f" "$f"; then
                printf 'Updated         : %s\n' "$f"
            else
                printf 'Failed to update: %s\n' "$f"
            fi 
        fi
    done
}

Main
