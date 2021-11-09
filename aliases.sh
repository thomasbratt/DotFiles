# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias disk='lsblk -o TYPE,NAME,MOUNTPOINT,FSTYPE,SIZE,FSAVAIL,FSUSE%,FSUSED,UUID,PTUUID,PHY-SEC,LOG-SEC'
alias end='_end(){ hexdump -C "$1" | grep --color -E " 0a| 0d|$"; };_end '
alias rp=realpath

alias ga='git add'
alias gc='git checkout'
alias gd='git diff'
alias gl='git log --decorate --name-status'
alias gs='git status'

alias gaa='git add -A'
alias gba='git branch -a'
alias gca='git commit --amend'
alias gcm='git commit -m'
alias gdc='git diff --cached'
alias gpo='git push origin'
alias gpr='git pull --rebase'
alias gr='git restore'
alias grs='git restore --staged'

alias jb='cd ~/Dropbox;clear;pwd;ls -al'
alias jd='cd ~/Downloads;clear;pwd;ls -al'
alias js='cd ~/src;clear;pwd;ls -al'
alias jt='cd ~/tmp;clear;pwd;ls -al'
alias la='ls -al'
alias ll='ls -l'
alias ls='ls --color=auto -h --time-style=+'\''%Y-%m-%d %H:%M:%S'\'' '

alias sss='ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no '
alias ssp='scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no '

