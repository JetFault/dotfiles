# If not running interactively, don't do anything
[ -z "$PS1" ] && return

#TERM='xterm-256color'
EDITOR="/usr/bin/vim"
if [ -e "/usr/local/bin/vim" ]; then
    EDITOR="/usr/local/bin/vim";
fi

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace
HISTIGNORE="ls:pwd:exit:mount:cd"

#export PROMPT_COMMAND="history -a; history -n"

# append to the history file, don't overwrite it
#shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=2000
HISTFILESIZE=4000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

PATH="/usr/local/bin:$PATH:/usr/bin"

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

#if [ -n "$force_color_prompt" ]; then
    #if [ -x /usr/bin/tput ] && tput setaf 1 &> /dev/null; then
	## We have color support; assume it's compliant with Ecma-48
	## (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	## a case would tend to support setf rather than setaf.)
	#color_prompt=yes
    #else
	#color_prompt=
    #fi
#fi

source ~/bin/.git-prompt.sh
source ~/.bash_colors

export PS1="${debian_chroot:+($debian_chroot)}\[${Green}\]\u@\h\[${Color_off}\]:\[${Cyan}\]\w\$(__git_ps1)\[${Color_Off}\]\[${ICyan}\]\$ \[${BWhite}\]"

trap 'echo -ne "$(tput sgr0)"' DEBUG

# Less Colors for Man Pages
export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[38;5;016m\E[48;5;220m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline

#if [ "$color_prompt" = yes ]; then
#else
    #PS1="${debian_chroot:+($debian_chroot)}\u@\h:\w\$(__git_ps1)\$ "
#fi
#unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
#case "$TERM" in
#xterm*|rxvt*)
    #PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    #;;
#*)
    #;;
#esac

# Alias definitions.
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ]; then
    PATH="$PATH:$HOME/bin"
fi


if [ "`uname`" == "Darwin" ]; then
  source ~/.bashrc_mac
fi

if [ -f ~/.bashrc_local ]; then
    source ~/.bashrc_local
fi

# Add RVM to PATH
if [ -e ~/.rvm/scripts/rvm ]; then
  source ~/.rvm/scripts/rvm
  #PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
fi

# This loads nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/home/jerry/.nvm/nvm.sh" ] && . "/home/jerry/.nvm/nvm.sh"

export PATH
