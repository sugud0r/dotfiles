# systectl shortcuts
alias start='sudo systemctl start'
alias stop='sudo systemctl stop'
alias status='systemctl status'
alias enable='sudo systemctl enable'
alias disable='sudo systemctl disable'
alias restart='sudo systemctl restart'

# codeutils alias
alias ls='ls -F1h --group-directories-first --color=auto'
alias cp="cp -iv"
alias df='df -h'
alias free='free -m'
alias mkdir='mkdir -p'
alias more=less
alias mv='mv -iv'
alias rm='rm -Iv'

# miscellaneous
alias p='sudo pacman'
alias dc='docker-compose'
alias pdc="docker-compose -f ${HOME}/src/containers/docker-compose.yaml"
alias ruby='ruby -w'
alias set-volume='pactl -- set-sink-volume 0'
alias smem='smem -t -k -P'
