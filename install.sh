# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    install.sh                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lmartin <lmartin@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/04 04:43:15 by lmartin           #+#    #+#              #
#    Updated: 2020/06/16 18:54:36 by lmartin          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
#!/bin/bash

# variables
vimrc="vimrc"
plugins="plugins"
theme="theme"
user="lmartin"
mail="$user@student.42.fr"

# unknow command
if [[ -n $1 ]] && [[ $1 != $vimrc ]] && [[ $1 != $plugins ]] && [[ $1 != $theme ]]
then
	echo "$1: Unknown command - [$vimrc, $plugins, $theme]"
	exit
fi

# .vimrc 
if [[ $1 = $vimrc ]] || [[ -z $1 ]]
then
	cp -f ./.vimrc $HOME/.vimrc
fi

# plugins
if [[ $1 = $plugins ]] || [[ -z $1 ]]
then
	## delete if exist
	rm -rf $HOME/.vim/plugins
	rm -rf $HOME/.vim/pack/plugins/start/vim-airline
	rm -rf $HOME/.vim/pack/plugins/start/lightline
	# header 42
	mkdir -p $HOME/.vim/plugins
	cp -f ./stdheader.vim $HOME/.vim/plugins/stdheader.vim
	if [[ -z "${USER}" ]]
	then
		echo "export USER=$user" >> $HOME/.zshrc
	fi
	if [[ -z "${MAIL}" ]]
	then
		echo "export MAIL=$mail" >> $HOME/.zshrc
	fi
	## airline
	mkdir -p $HOME/.vim/pack/plugins/start/vim-airline
	git clone https://github.com/vim-airline/vim-airline.git $HOME/.vim/pack/plugins/start/vim-airline
	## lightline
	mkdir -p $HOME/.vim/pack/plugins/start/lightline
	git clone https://github.com/itchyny/lightline.vim $HOME/.vim/pack/plugins/start/lightline
fi

#theme
if [[ $1 = $theme ]] || [[ -z $1 ]]
then
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
fi
