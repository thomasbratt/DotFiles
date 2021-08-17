#!/bin/bash -u

# Copy the latest versions of the dotfiles into the git repository.

ALL_DOT_FILES=(
    '.bashrc'
    '.bashrc.d/bash_aliases.sh'
    '.bashrc.d/bash_selected_editor.sh'
    '.bashrc.d/bash_terminal.sh'
    '.gitconfig'
    '.gitignore'
    '.ssh/config'
    '.vimrc'
)

main(){
    for f in "${ALL_DOT_FILES[@]}"; do
        if [[ ! -f ${HOME}/${f} ]]; then
            printf 'Missing         : %s\n' "${f}"
        elif cmp -s "${HOME}/${f}" "${f}"; then
            printf 'Unchanged       : %s\n' "${f}"
        else
            mkdir -p $(dirname "${f}")
            \cp "${HOME}/${f}" "${f}" 2>/dev/null
            if cmp -s "${HOME}/${f}" "${f}"; then
                printf 'Updated         : %s\n' "${f}"
            else
                printf 'Failed          : %s\n' "${f}"
            fi 
        fi
    done
}

main "$@"

