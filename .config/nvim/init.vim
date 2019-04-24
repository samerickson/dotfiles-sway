let mapleader =","

" Some basics:
	set nocompatible
	set nohlsearch
	filetype plugin on
	syntax on
	set listchars=tab:>-
	set tabstop=4
	set shiftwidth=4
	set splitbelow splitright

" Enable autocompletion:
	set wildmode=longest,list,full

" Disables automatic commenting on newline:
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

	nnoremap S :%s//g<Left><Left>
