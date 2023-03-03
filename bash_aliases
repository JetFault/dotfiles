#GIT
alias gs="git status"
alias gd="git diff"
alias gc="git commit"
alias ga="git add"
alias gp="git push"
alias gpl="( facts ); git pull --rebase"
if [ -e "hub" ]; then
    alias git="hub"
fi
alias gcd="cd \"\$(git rev-parse --show-toplevel)\""

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

#Fun Stuff
alias facts="curl -s randomfunfacts.com | grep '<i>' | sed 's/.*<i>\(.*\)<\/i>.*/\1/'"
alias fact_notify='notify-send "Random Fact" "`facts`"'

if [ ! -e "pbcopy"]; then
    alias pbcopy='xclip -selection clipboard'
    alias pbpaste='xclip -selection clipboard -o'
fi
