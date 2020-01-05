" File: ~/.config/nvim/init.vim
" Author: Sam Erickson
" License: MIT

" Load plugin manager if it is not already installed
if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ~/.config/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugins')
	Plug 'vimwiki/vimwiki'
	Plug 'scrooloose/nerdtree'
	Plug 'junegunn/goyo.vim'
call plug#end()

" Some basics:
	let mapleader =","
	map <CapsLock> <Esc>
	set laststatus=2 ruler rulerformat=%l,%v
	set nocompatible nohlsearch
	filetype plugin on
	syntax on
	set listchars=tab:»·,extends:›,precedes:·,trail:·
	set sw=4 sts=4 ts=4 noet
	set splitbelow splitright
	set history=1000 undolevels=1000
	set wildmenu
	set scrolloff=10

	" Allows vim yank and paste to use the system clipboard
	set clipboard=unnamed

" Enable autocompletion:
	set wildmode=longest,list,full

" Disables automatic commenting on newline:
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Special markdown and wiki file settings
	autocmd BufRead,BufNewFile *.md,*.wiki setlocal textwidth=79 spell

" Personal shortcuts
	" Shortcuts to frequently toggled settings
	nnoremap <leader>s :set spell!<CR>
	nnoremap <leader>l :set list!<CR>
	nnoremap <leader>m :set number!<CR>
	nnoremap <leader>n :set relativenumber!<CR>

	" Shortcuts to frequently used functions
	nnoremap S :%s//g<Left><Left>

	" Plugin specific keybindings
	nnoremap <leader>n :NERDTreeToggle<CR>
	nnoremap <leader>g :Goyo<CR>

	" Better navigation of split windows
	map <C-J> <C-W><C-J>
	map <C-K> <C-W><C-K>
	map <C-L> <C-W><C-L>
	map <C-H> <C-W><C-H>
	
	" Use ctrl+l to correct spelling on the fly
	inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" Changes for specific files types
	autocmd filetype php		set filetype=html
	autocmd filetype html,xml	set shiftwidth=2 tabstop=2 smartindent
	autocmd filetype vimwiki	set filetype=markdown

" Vimwiki settings
	let g:vimwiki_global_ext = 0
	let g:vimwiki_list = [{'path': '~/OneDrive/notes/',
		\ 'syntax': 'markdown', 'ext': '.md' }]

