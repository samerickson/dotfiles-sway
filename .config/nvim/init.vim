let mapleader =","

call plug#begin('~/.config/nvim/plugins')
	Plug 'vimwiki/vimwiki'
call plug#end()

" Some basics:
	set nocompatible
	set nohlsearch
	filetype plugin on
	syntax on
	set listchars=tab:>-,trail:·
	set sw=4 sts=4 ts=4 noet
	set splitbelow splitright

" Enable autocompletion:
	set wildmode=longest,list,full

" Disables automatic commenting on newline:
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Wrap text to 80 characters to keep my grades up at school
	autocmd BufRead,BufNewFile *.md setlocal textwidth=80

" Personal shortcuts
	nnoremap <leader>s :set spell!<CR>
	nnoremap <leader>l :set list!<CR>
	nnoremap S :%s//g<Left><Left>
	nnoremap <leader>m :set number!<CR>
	nnoremap <leader>n :set relativenumber!<CR>

" Open vimrc in new buffer / reload vimrc
	nnoremap <silent> <leader>ev :new $MYVIMRC
	nnoremap <silent> <leader>sv :so $MYVIMRC

" Changes for specific files types
	autocmd filetype php		set filetype=html
	autocmd filetype html,xml	set shiftwidth=2 tabstop=2 smartindent
