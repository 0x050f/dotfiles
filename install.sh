# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    install.sh                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lmartin <lmartin@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/04 04:43:15 by lmartin           #+#    #+#              #
#    Updated: 2020/02/04 04:43:18 by lmartin          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
#!/bin/bash

# .vimrc
cp -f ./.vimrc $HOME/.vimrc

# plugins
## delete if exist
rm -rf $HOME/.vim/pack/plugins/start/vim-airline
rm -rf $HOME/.vim/pack/plugins/start/lightline
## airline
mkdir -p $HOME/.vim/pack/plugins/start/vim-airline
git clone https://github.com/vim-airline/vim-airline.git $HOME/.vim/pack/plugins/start/vim-airline
## lightline
mkdir -p $HOME/.vim/pack/plugins/start/lightline
git clone https://github.com/itchyny/lightline.vim $HOME/.vim/pack/plugins/start/lightline

# theme
git clone https://github.com/sainnhe/edge

## colors
mkdir -p $HOME/.vim/colors/ 
cp -f ./edge/colors/edge.vim $HOME/.vim/colors/edge.vim

## airline
mkdir -p $HOME/.vim/autoload/airline/themes/
cp -f ./edge/autoload/airline/themes/* $HOME/.vim/autoload/airline/themes/

## lightline
mkdir -p $HOME/.vim/autoload/lightline/colorscheme/
cp -f ./edge/autoload/lightline/colorscheme/* $HOME/.vim/autoload/lightline/colorscheme/

## cleaning
rm -rf ./edge
