#GIT
alias gs="git status"
alias gc="git commit"
alias ga="git add"
alias gp="git push"
alias gpl="( facts ); git pull"

alias :q="exit"
alias vi="vim"
alias ..="cd .."
alias tmux="tmux -2"

#ls
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

#SSH
alias lab="ssh -X jreptak@kill.rutgers.edu"
alias slug="ssh jreptak@ruslug.rutgers.edu"
alias peek="ssh jerry@ec2-dev02.peeknet.net"
alias aws="ssh jreptak@ec2-184-72-208-110.compute-1.amazonaws.com"
alias js="ssh -C jreptak@jreptak.com"

#Variables
jer="jreptak@jreptak.com"

#Fun Stuff
alias facts="curl -s randomfunfacts.com | grep '<i>' | sed 's/.*<i>\(.*\)<\/i>.*/\1/'"
alias fact_notify='notify-send "Random Fact" "`facts`"'
