# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    install.sh                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lmartin <lmartin@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/04 04:43:15 by lmartin           #+#    #+#              #
#    Updated: 2021/05/20 10:15:26 by lmartin          ###   ########.fr        #
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
	mkdir -p $HOME/.vim/plugin

##	Doxygen
#	curl https://www.vim.org/scripts/download_script.php?src_id=14064 > DoxygenToolkit.vim
#	cp -f ./DoxygenToolkit.vim $HOME/.vim/plugin/DoxygenToolkit.vim
#
##	42 header
#	if [ ! -f /usr/share/vim/vim80/plugin/stdheader.vim ] ; then
#	cp -f ./stdheader.vim $HOME/.vim/plugin/stdheader.vim
#	if [ -z "${FT_USER}" ] || ! [ $FT_USER = $user ] ; then
#		if ! grep "export FT_USER=$user" $HOME/.zshrc ; then
#			echo "export FT_USER=$user" >> $HOME/.zshrc
#		fi
#	fi
#	if [ -z "${MAIL}" ] || ! [ $MAIL = $mail ] ; then
#		if ! grep "export MAIL=$mail" $HOME/.zshrc ; then
#			echo "export MAIL=$mail" >> $HOME/.zshrc
#		fi
#	fi
#	fi

#	mkdir -p $HOME/.vim/pack/plugins/start/lightline
#	git clone https://github.com/itchyny/lightline.vim $HOME/.vim/pack/plugins/start/lightline
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

#	mkdir -p $HOME/.vim/autoload/lightline/colorscheme/
#	cp -f ./edge/autoload/lightline/colorscheme/* $HOME/.vim/autoload/lightline/colorscheme/

	rm -rf ./edge
}

setup_languages() {
	rm -rf $HOME/.vim/syntax
	mkdir -p $HOME/.vim/syntax

##	Clone and add new languages syntax here
#	git clone https://github.com/dart-lang/dart-vim-plugin
#	cp -f dart-vim-plugin/syntax/dart.vim $HOME/.vim/syntax/
}

main() {
	cpy_vimrc
	setup_plugins
	setup_theme
	setup_languages
}

main
