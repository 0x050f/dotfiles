" **************************************************************************** "
"                                                                              "
"                                                         :::      ::::::::    "
"    .vimrc                                             :+:      :+:    :+:    "
"                                                     +:+ +:+         +:+      "
"    By: lmartin <lmartin@student.42.fr>            +#+  +:+       +#+         "
"                                                 +#+#+#+#+#+   +#+            "
"    Created: 2020/02/04 02:23:08 by lmartin           #+#    #+#              "
"    Updated: 2020/02/04 04:06:40 by lmartin          ###   ########.fr        "
"                                                                              "
" **************************************************************************** "

" colors

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

" cursor

set ruler
set cursorline
set mouse=a

" tabs & spaces

set tabstop=4
set noexpandtab

" ui config

set number
set showcmd
set lazyredraw
set showmatch

" search

set hlsearch
set incsearch

" movement

nnoremap j gj
nnoremap k gk
