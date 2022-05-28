set encoding=utf-8

" colors {{{
	set background=dark
	syntax on

	"" colorscheme
	let g:edge_style = 'neon'
	let g:edge_disable_italic_comment = 1
	let g:edge_transparent_background = 1

	colorscheme edge
" }}}
" cursor {{{
	set ruler
	set cursorline
	set mouse=a
" }}}
" whitespaces {{{
	set tabstop=4
	set softtabstop=4
	set shiftwidth=0
	set noexpandtab
	set nofixendofline
	set list
	set listchars=tab:>·,space:·,trail:-,extends:>,precedes:<,nbsp:%,eol:$
" }}}
" ui config {{{
	set number
	set relativenumber
	set showcmd
	set lazyredraw
	set showmatch
	set colorcolumn=80
" }}}
" search {{{
	set hlsearch
	set incsearch
" }}}
" folding {{{
	set foldenable
	set foldlevelstart=10
	set foldnestmax=10
	nnoremap <space> za
	set foldmethod=indent
	set fillchars=fold:\ 
" }}}
" movement {{{
	nnoremap j gj
	nnoremap k gk
" }}}

helptags $HOME/.vim/doc/

" vim:foldmethod=marker:foldlevel=0
