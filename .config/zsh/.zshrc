# ~/.zshrc
# vim:nowrap

autoload -U colors && colors

# Zsh options: see `man zshoptions`
# =================================
	# Auto completion options
	setopt autocd			# Imply cd when directory path is supplied
	setopt automenu			# Automatically use menu completion on 2nd tab
	setopt menucomplete		# Cycle though autocomplete options
	
	#History options
	setopt appendhistory	# Append history file rather than replace it
	setopt extendedhistory	# Save each commands time stamp
	setopt histfindnodups	# Ignore duplicates when searching
	setopt histignoredups	# Ignore duplicate simultaneous events
	setopt histignorespace	# Ignore commands that being with space
	setopt histsavenodups	# Ignore old duplicate commands on save

	# Input/Output
	setopt correct			# Try to correct the spelling of commands
	unsetopt prompt_sp

# HISTORY
# =======
	# Enable recursive search
	bindkey -v
	bindkey '^R' history-incremental-search-backward

	HISTSIZE=10000
	SAVEHIST=10000
	HISTFILE=$ZDOTDIR/.zsh_history

# PROMPT
# ======
	# Show error code in prompt like so :127:
	PROMPT="%{$fg[cyan]%}%B:%b%{$fg[yellow]%}%?%{$fg[cyan]%}%B:"

	# Add dirrectory and $ at the end of prompt
	PROMPT+="%{$fg[magenta]%}%~ %B%{$fg[green]%}$ %b"

# LOAD ALIASES AND FUNCTIONS
# ==========================
	[ -f "$XDG_CONFIG_HOME/aliasrc" ] && source $XDG_CONFIG_HOME/aliasrc

# PLUGINS
# =======
	# Load zsh syntax highlighting if it is installed
	syntax_highlighting='/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh'
	[ -f "$syntax_highlighting" ] && source "$syntax_highlighting"
