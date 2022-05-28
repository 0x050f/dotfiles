#!/bin/bash

path=$(dirname "$0")

setup_syntax() {
	rm -rf $HOME/.vim/syntax
	mkdir -p $HOME/.vim/syntax
#	Install syntax languages here
}

setup_theme() {
#	edge -> https://github.com/sainnhe/edge
	curl -L https://github.com/sainnhe/edge/archive/refs/tags/v0.1.4.tar.gz --output $path/v0.1.4.tar.gz
	tar -xvf $path/v0.1.4.tar.gz -C $path

	rm -rf $HOME/.vim/autoload/
	mkdir -p $HOME/.vim/autoload/
	cp -f $path/edge-0.1.4/autoload/edge.vim $HOME/.vim/autoload/

	rm -rf $HOME/.vim/colors
	mkdir -p $HOME/.vim/colors/
	cp -f $path/edge-0.1.4/colors/edge.vim $HOME/.vim/colors/edge.vim

	mkdir -p $HOME/.vim/doc/
	cp -f $path/edge-0.1.4/doc/edge.txt $HOME/.vim/doc/
}

setup_plugins() {
	rm -rf $HOME/.vim/plugin
	mkdir -p $HOME/.vim/plugin
##	42 header - works at 42 and everywhere else :)
#
#	echo "Enter your 42 login:"
#	read user
#	mail="$user@student.42.fr"
#	if [ ! -f /usr/share/vim/vim80/plugin/stdheader.vim ] ; then
#		cp -f $path/custom_plugins/stdheader.vim $HOME/.vim/plugin/stdheader.vim
#		if [ -z "${FT_USER}" ] || ! [ $FT_USER = $user ] ; then
#			if ! grep "export FT_USER=$user" $HOME/.zshrc ; then
#				echo "export FT_USER=$user" >> $HOME/.zshrc
#			fi
#		fi
#		if [ -z "${MAIL}" ] || ! [ $MAIL = $mail ] ; then
#			if ! grep "export MAIL=$mail" $HOME/.zshrc ; then
#				echo "export MAIL=$mail" >> $HOME/.zshrc
#			fi
#		fi
#	fi
}

cpy_vimrc() {
	rm -rf $HOME/.vimrc
	cp -f $path/.vimrc $HOME/.vimrc
}

check_binaries() {
	binaries=(vim curl tar)
	for binary in ${binaries[@]}; do
		if ! command -v $binary &> /dev/null
		then
			echo "$binary not found"
			exit 1
		fi
	done
}

main() {
	check_binaries
	cpy_vimrc
	setup_plugins
	setup_theme
	setup_syntax
}

main
