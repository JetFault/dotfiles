#GIT
alias gs="git status"
alias gc="git commit"
alias ga="git add"
alias gp="git push"
alias gpl="( facts ); git pull --rebase"
alias git="hub"

alias :q="exit"
alias vi="vim"
alias ..="cd .."
alias tmux="tmux -2"

#ls
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

#color
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

#SSH
alias lab="ssh -X jreptak@kill.rutgers.edu"
alias slug="ssh jreptak@ruslug.rutgers.edu"
alias smil="ssh -C jreptak@ec2-23-22-67-45.compute-1.amazonaws.com"
alias js="ssh -C jreptak@jreptak.com"

#Variables
jer="jreptak@jreptak.com"

#Fun Stuff
alias facts="curl -s randomfunfacts.com | grep '<i>' | sed 's/.*<i>\(.*\)<\/i>.*/\1/'"
alias fact_notify='notify-send "Random Fact" "`facts`"'
