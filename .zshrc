# ~/.zsh

# Default PATH
export PATH="/bin:/sbin"
export PATH="$PATH:/usr/local/sbin:/usr/local/bin:/usr/bin"

# Personal scripts
export PATH="$PATH:$HOME/.local/bin"

# Intel access hardware-accelerated video decode.
export PATH="$PATH:/opt/intel/mediasdk"

# OH-MY-ZSH
export ZSH="/home/erickssb/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(colored-man-pages zsh-syntax-highlighting vi-mode)

# Additional zsh shell related files
source $HOME/.profile
source $ZSH/oh-my-zsh.sh
source $XDG_CONFIG_HOME/aliasrc
