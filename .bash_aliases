alias end='_end(){ hexdump -C "$1" | grep --color -E " 0a| 0d|$"; };_end '
alias fp='_fp(){ echo "$(pwd)/$1";};_fp '

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
alias glm='git log --decorate --name-status master..'
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

