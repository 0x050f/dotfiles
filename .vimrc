" **************************************************************************** "
"                                                                              "
"                                                         :::      ::::::::    "
"    .vimrc                                             :+:      :+:    :+:    "
"                                                     +:+ +:+         +:+      "
"    By: lmartin <lmartin@student.42.fr>            +#+  +:+       +#+         "
"                                                 +#+#+#+#+#+   +#+            "
"    Created: 2020/02/04 02:23:08 by lmartin           #+#    #+#              "
"    Updated: 2020/02/04 05:34:42 by lmartin          ###   ########.fr        "
"                                                                              "
" **************************************************************************** "

" colors {{{
	set termguicolors
	set background=dark
	syntax on

	"" airline
	let g:airline_theme = 'edge'

	"" lightline
	let g:lightline = {}
	let g:lightline.colorscheme = 'edge'

	"" colorscheme
	let g:edge_style = 'neon'
	let g:edge_disable_italic_comment = 1
	colorscheme edge
" }}}
" cursor {{{
	set ruler
	set cursorline
	set mouse=a
" }}}
" tabs & spaces {{{
	set tabstop=4
	set noexpandtab
" }}}
" ui config {{{
	set number
	set showcmd
	set lazyredraw
	set showmatch
	set colorcolumn=80
	let g:netrw_winsize=20
	let g:netrw_banner=0
	let g:netrw_liststyle=3
	nnoremap † :Le<CR>
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

" vim:foldmethod=marker:foldlevel=0
