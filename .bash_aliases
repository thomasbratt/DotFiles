alias fp='\
    _fp(){ \
        sed '\''s|/./|/|'\'' <<< "$(pwd)/${1}";\
    };\
    _fp '
alias gaa='git add -A'
alias ga='git add'
alias gba='git branch -a'
alias gca='git commit --amend'
alias gc='git checkout'
alias gcm='git commit -m'
alias gdc='git diff --cached'
alias gd='git diff'
alias gl='git log --decorate --name-status'
alias glm='git log --decorate --name-status master..'
alias gp='git pull'
alias gpo='git push origin'
alias gr='git restore'
alias grs='git restore --staged'
alias gs='git status'
alias jb='cd ~/Dropbox;clear;pwd;ls -al'
alias jd='cd ~/Downloads;clear;pwd;ls -al'
alias jn='cd ~/notes;clear;pwd;ls'
alias js='cd ~/src;clear;pwd;ls -al'
alias jt='cd ~/tmp;clear;pwd;ls -al'
alias la='ls -al'
alias ll='ls -l'
alias ls='ls --color=auto -h --time-style=+'\''%Y-%m-%d %H:%M:%S'\'' '

