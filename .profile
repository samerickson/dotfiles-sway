# ~/.profile
# Also sourced by ~/.zprofile

# APPLICATIONS
# ============
	export EDITOR="nvim"
	export VISUAL="$EDITOR"

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
