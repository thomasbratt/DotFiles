# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000
HISTTIMEFORMAT='%F %T  ' 

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# Increase colors from 8 to 256.
export TERM="xterm-256color"

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias end='_end(){ hexdump -C "$1" | grep --color -E " 0a| 0d|$"; };_end '
alias fp='_fp(){ echo "$(pwd)/$1";};_fp '

alias ga='git add'
alias gc='git checkout'
alias gd='git diff'
alias gl='git log --decorate --name-status'
alias glm='git log --decorate --name-status master..'
alias gs='git status'

alias gaa='git add -A'
alias gba='git branch -a'
alias gca='git commit --amend'
alias gcm='git commit -m'
alias gdc='git diff --cached'
alias gpo='git push origin'
alias gpr='git pull --rebase'

alias jb='cd ~/Dropbox;clear;pwd;ls -al'
alias jd='cd ~/Downloads;clear;pwd;ls -al'
alias js='cd ~/src;clear;pwd;ls -al'
alias jt='cd ~/tmp;clear;pwd;ls -al'
alias la='ls -al'
alias ll='ls -l'
alias ls='ls --color=auto -h --time-style=+'\''%Y-%m-%d %H:%M:%S'\'' '

alias sss='ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no '
alias ssp='scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no '

