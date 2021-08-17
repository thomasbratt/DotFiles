# Bash terminal settings.
#
# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000
HISTTIMEFORMAT='%F %T  ' 

# User specific aliases and functions
HISTCONTROL=ignoredups:ignorespace

# Increase colors from 8 to 256.
export TERM="xterm-256color"

