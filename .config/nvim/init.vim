let mapleader =","

" Some basics:
	set nocompatible
	set nohlsearch
	filetype plugin on
	syntax on
	set listchars=tab:>-,trail:·
	set tabstop=4 shiftwidth=4
	set splitbelow splitright

" Enable autocompletion:
	set wildmode=longest,list,full

" Disables automatic commenting on newline:
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

	nnoremap <leader>s :set spell!<CR>
	nnoremap <leader>l :set list!<CR>
	nnoremap S :%s//g<Left><Left>
	nnoremap <leader>m :set number!<CR>
	nnoremap <leader>n :set relativenumber!<CR>

" Open vimrc in new buffer / reload vimrc
	nnoremap <silent> <leader>ev :new $MYVIMRC
	nnoremap <silent> <leader>sv :so $MYVIMRC

" Changes for specific files types
	autocmd filetype html,xml set shiftwidth=2 tabstop=2

