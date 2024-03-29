#!/bin/bash

set -u

# -----------------------------------------------------------------------------
# Replace the existing configuration files with soft links to the files
# in this git repository.
# Should be run from the repository root.
# All target links are relative to the current user's home directory.
# Note that any existing configuration files will be overwritten!
# -----------------------------------------------------------------------------

BACKUP_FOLDER=~/tmp/dotfiles_backup
DIR_TARGET="$(cd $(dirname $0);pwd)"
MAPPINGS=(
    '.bashrc'                          'bashrc'
    '.bashrc.d/aliases.sh'             'aliases.sh'
    '.bashrc.d/selected_editor.sh'     'selected_editor.sh'
    '.bashrc.d/terminal.sh'            'terminal.sh'
    '.config/nvim/init.lua'            'neovim_init.lua'
    '.config/procs/config.toml'        'procs.toml'
    '.gitconfig'                       'gitconfig'
    '.gitignore'                       'gitignore'
    '.ssh/config'                      'ssh_config'
)

link_dotfiles(){
    \mkdir -p "${BACKUP_FOLDER}"
    for ((i=0;i<"${#MAPPINGS[@]}";i+=2)); do
        local linkname="${MAPPINGS[i]}"
        local target="${MAPPINGS[i+1]}"
        printf '%50s -> %-50s\n' "${HOME}/${linkname}" "${DIR_TARGET}/${target}" 
        \rm "${BACKUP_FOLDER}/${target}"                        2>/dev/null
        \mv "${HOME}/${linkname}" "${BACKUP_FOLDER}/${target}"  2>/dev/null
        \mkdir -p "$(dirname ${HOME}/${linkname})"
        ln -s "${DIR_TARGET}/${target}" "${HOME}/${linkname}"   || return $?
    done
}

print_links(){
    for ((i=0;i<"${#MAPPINGS[@]}";i+=2)); do
        local linkname="${MAPPINGS[i]}"
        ls -al "${HOME}/${linkname}"
    done 
}

main(){
    printf 'backups: %s\n' "${BACKUP_FOLDER}"
    printf 'targets: %s\n' "${DIR_TARGET}"
    printf 'linking...\n'
    link_dotfiles   || return $?
    printf 'results...\n'
    print_links     || return $?
}

main "$@"

