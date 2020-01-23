# ~/.zshrc
# vim:nowrap

autoload -U colors && colors

# PROMPT
# ======
	# Show error code in prompt like so :127:
	PROMPT="%{$fg[cyan]%}%B:%b%{$fg[yellow]%}%?%{$fg[cyan]%}%B:"

	# Add dirrectory and $ at the end of prompt
	PROMPT+="%{$fg[magenta]%}%~ %B%{$fg[green]%}$ %b"

# LOAD ALIASES AND FUNCTIONS
# ==========================
	source $XDG_CONFIG_HOME/aliasrc

# What does this do?
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit

# PLUGINS
# =======
	# Load zsh syntax highlighting
	source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
