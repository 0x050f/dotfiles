# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    install.sh                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lmartin <lmartin@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/04 04:43:15 by lmartin           #+#    #+#              #
#    Updated: 2020/08/19 21:12:44 by lmartin          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
#!/bin/bash

user="lmartin"
mail="$user@student.42.fr"

cpy_vimrc() {
	rm -rf $HOME/.vimrc
	cp -f ./.vimrc $HOME/.vimrc
}

setup_plugins() {
	rm -rf $HOME/.vim/plugin
	rm -rf $HOME/.vim/pack/plugins/start/lightline

	mkdir -p $HOME/.vim/plugin
	if [[ ! -f /usr/share/vim/vim80/plugin/stdheader.vim ]] ; then
	cp -f ./stdheader.vim $HOME/.vim/plugin/stdheader.vim
	if [[ -z "${FT_USER}" || $FT_USER != $user ]] ; then
		if ! grep "export FT_USER=$user" $HOME/.zshrc ; then
			echo "export FT_USER=$user" >> $HOME/.zshrc
		fi
	fi
	if [[ -z "${MAIL}" || $MAIL != $mail ]] ; then
		if ! grep "export MAIL=$mail" $HOME/.zshrc ; then
			echo "export MAIL=$mail" >> $HOME/.zshrc
		fi
	fi
	fi
	git clone https://github.com/frazrepo/vim-rainbow.git
	cp -f ./vim-rainbow/plugin/rainbow.vim $HOME/.vim/plugin/rainbow.vim
	rm -rf ./vim-rainbow

	mkdir -p $HOME/.vim/pack/plugins/start/lightline
	git clone https://github.com/itchyny/lightline.vim $HOME/.vim/pack/plugins/start/lightline
}

setup_theme() {
	rm -rf $HOME/.vim/colors
	rm -rf $HOME/.vim/autoload/lightline/colorscheme

	git clone https://github.com/sainnhe/edge

	mkdir -p $HOME/.vim/autoload/
	cp -f ./edge/autoload/edge.vim $HOME/.vim/autoload/

	mkdir -p $HOME/.vim/colors/ 
	cp -f ./edge/colors/edge.vim $HOME/.vim/colors/edge.vim

	mkdir -p $HOME/.vim/doc/
	cp -f ./edge/doc/edge.txt $HOME/.vim/doc/

	mkdir -p $HOME/.vim/autoload/lightline/colorscheme/
	cp -f ./edge/autoload/lightline/colorscheme/* $HOME/.vim/autoload/lightline/colorscheme/

	rm -rf ./edge
}

main() {
	cpy_vimrc
	setup_plugins
	setup_theme
}

main
