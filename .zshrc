local BLACK=$'%{\e[1;30m%}'
local RED=$'%{\e[1;31m%}'
local GREEN=$'%{\e[1;32m%}'
local YELLOW=$'%{\e[1;33m%}'
local BLUE=$'%{\e[1;34m%}'
local PERPLE=$'%{\e[1;35m%}'
local WATER=$'%{\e[1;36m%}'
local WHITE=$'%{\e[1;37m%}'
#local DEFAULT=$'%{\e[1;m%}'
local DEFAULT=$'%{\e[1;37m%}'

alias ls='ls -F'
alias cddev='cd ~/Documents/Development'

autoload -U compinit
compinit

#PROMPT="%n@%m%% "
#PROMPT="$GREEN%m $BLUE%~ # $DEFAULT"

if [ $UID = 0 ]; then
    PROMPT="$GREEN%m $RED%T # $DEFAULT"
else
    PROMPT="$GREEN%m $BLUE%T # $DEFAULT"
fi

RPROMPT="[%~]"
#SPROMPT="correct: %R -> %r ? "

HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
#setopt hist_ignore_dups     # ignore duplication command history list
#setopt share_history        # share command history data
setopt auto_pushd
setopt pushd_ignore_dups
setopt extended_glob
setopt auto_cd 
setopt auto_param_slash
setopt mark_dirs
fpath=(/usr/local/share/zsh-completions $fpath)

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# z
. /usr/local/etc/profile.d/z.sh
function _Z_precmd {
  z --add "$(pwd -P)" 61
}
precmd_functions=($precmd_functions _Z_precmd)

# For Vim
export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim
alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'

if [[ -s $HOME/.rvm/scripts/rvm ]] ; then source $HOME/.rvm/scripts/rvm ; fi

