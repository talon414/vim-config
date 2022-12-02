" improved vim

set nocompatible

" syntax

filetype plugin on
syntax on
filetype indent on
set autoindent
set smartindent

set mouse=a
set clipboard=unnamedplus

set incsearch
set hlsearch

set number
set relativenumber

set shiftwidth=4
set tabstop=4
set showcmd

" file search

set path+=**

set wildmenu

" tag jump

command! MakeTags !ctags -R .


" file browsing

let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" SNIPPETS:

" Read an empty HTML template and move cursor to title
	nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>3jwf>a


" colorscheme
	colorscheme industry
	"colorscheme evening

"set terminal bottom

	command Term bo term
	set t_fd=0

"splitting

	set splitbelow splitright

" auto complete
	"set wildmode=longest,list,full

"window shortcuts

	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l

" global replace

	nnoremap S :%s//g<left><left>

" new tab
	nnoremap <silent> <C-t> :tabnew<CR>

" paste from sys clip

	map <S-Insert> <C-i>

" Disables automatic commenting on newline:
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"Automatically deletes all trailing whitespace on save.
	autocmd BufWritePre * %s/\s\+$//e

