alias b='bat'
alias backup='/home/thomasbratt/src/backups/backup.sh'
alias disk='lsblk -o TYPE,NAME,MOUNTPOINT,FSTYPE,SIZE,FSAVAIL,FSUSE%,FSUSED,UUID,PTUUID,PHY-SEC,LOG-SEC'
alias end='_end(){ hexdump -C "$1" | grep --color -E " 0a| 0d|$"; };_end '
alias ga='git add'
alias gaa='git add -A'
alias gba='git branch -a'
alias gc='git checkout'
alias gca='git commit --amend'
alias gcm='git commit -m'
alias gd='git diff'
alias gdc='git diff --cached'
alias gl='git log --decorate --name-status'
alias gp='git pull'
alias gpo='git push origin "$(git branch --show-current)"'
alias gr='git restore'
alias grep='grep --color=auto'
alias grs='git restore --staged'
alias gs='git status'
alias h='history'
alias jb='cd ~/Dropbox;clear;pwd;ls -al'
alias jd='cd ~/Downloads;clear;pwd;ls -al'
alias js='cd ~/src;clear;pwd;ls -al'
alias jt='cd ~/tmp;clear;pwd;ls -al'
alias la='ls -al'
alias ll='ls -l'
alias ls='ls --color=auto -h --time-style=+'\''%Y-%m-%d %H:%M:%S'\'' '
alias p='procs'
alias rp='realpath'
alias ssp='scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no '
alias sss='ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no '
alias syncdocs='/home/thomasbratt/src/backups/sync_docs.sh'
alias synclibrary='/home/thomasbratt/src/backups/sync_library.sh'
alias syncmusic='/home/thomasbratt/src/backups/sync_music.sh'
alias vim='nvim'

