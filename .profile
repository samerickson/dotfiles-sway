# ~/.profile
# Also sourced by ~/.zprofile

# SHELL
# =====
	export ZDOTDIR="$HOME/.config/zsh"
	export WGETRC="$HOME/.config/wget/wgetrc"

# APPLICATIONS
# ============
	export EDITOR="nvim"
	export VISUAL="$EDITOR"
	export FILE="ranger"
	export READER="zathura"
	export TERMINAL="termite"
	export browser="firefox"

# PATH VARIABLE
# =============
	# Default PATH
	export PATH="/bin:/sbin"
	export PATH="$PATH:/usr/local/sbin:/usr/local/bin:/usr/bin"

	# Personal scripts
	export PATH="$PATH:$HOME/.local/bin"

	# Intel access hardware-accelerated video decode.
	export PATH="$PATH:/opt/intel/mediasdk"

# XDG BASE DIRECTORY SPECIFICATION
# ================================
	# XDG User Directory
	export XDG_CONFIG_HOME="$HOME/.config"
	export XDG_CACHE_HOME="$HOME/.cache"
	export XDG_DATA_HOME="$HOME/.local/share"

	# XDG System directories
	export XDG_DATA_DIRS="/usr/local/share:/usr/share"
	export XDG_CONFIG_DIRS="/etc/xdg"

# COLOR SCHEME
	export BLACK="#000000"
	export GRAY="#808080"
	export SILVER="#c0c0c0"
	export WHITE="#ffffff"
	export MAROON="#800000"
	export RED="#ff0000"
	export OLIVE="#808000"
	export YELLOW="#ffff00"
	export GREEN="#008000"
	export LIME="#00ff00"
	export TEAL="#008080"
	export CYAN="#00ffff"
	export NAVY="#000080"
	export BLUE="#0000ff"
	export purple="#800080"
	export MAGENTA="#ff00ff"
