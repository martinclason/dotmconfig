#!/bin/sh

# Tries to create $2 linking to $1
try_link() {
    if [ ! -e "$2" ]; then
        ln -s $PWD/$1 $2
        echo "CREATED LINK: $2"
    else
        echo "NOTHING DONE: $2 already exists, please fix this manually if needed."
    fi
}

echo "Installing mconfig config-files.\n"

# Editors
try_link .vimrc ~/.vimrc
mkdir -p ~/.vim/autoload
try_link .vim/autoload/plug.vim ~/.vim/autoload/plug.vim
mkdir -p ~/.config/nvim
try_link init.vim ~/.config/nvim/init.vim
mkdir -p ~/.emacs.d
try_link .emacs.d/init.el ~/.emacs.d/init.el


# Fish
# mkdir -p ~/.config/fish
# try_link config.fish ~/.config/fish/config.fish
# try_link abbr.fish ~/.config/fish/abbr.fish

# Misc
# mkdir -p ~/.config/alacritty
# try_link alacritty.yml ~/.config/alacritty/alacritty.yml
try_link .tmux.conf ~/.tmux.conf
try_link .inputrc ~/.inputrc
try_link .alias.bash ~/.alias.bash
try_link .bashrc ~/.bashrc
try_link .bash_profile ~/.bash_profile
