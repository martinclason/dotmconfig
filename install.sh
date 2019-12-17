#!/bin/sh

# Tries to create $2 linking to $1
try_link() {
    if [ ! -e $2 ]; then
        ln -s $PWD/$1 $2
        echo "Created link $2"
    else
        echo "$2 already exists, please fix this manually if needed."
    fi
}

# Editors
## Install vim dir
if [ ! -d "$HOME/.vim" ]; then
    echo "Creating .vim directory"
    mkdir -p ~/.vim/autoload
    cp .vim/autoload/plug.vim ~/.vim/autoload/
fi

try_link .vimrc ~/.vimrc

## Install .emacs.d dir
if [ ! -d "$HOME/.emacs.d" ]; then
    echo "Creating .emacs.d directory"
    mkdir ~/.emacs.d
fi

try_link .emacs.d/init.el ~/.emacs.d/init.el

try_link init.vim ~/.config/nvim/init.vim

# Fish
try_link config.fish ~/.config/fish/config.fish
try_link abbr.fish ~/.config/fish/abbr.fish

# Misc
try_link alacritty.yml ~/.config/alacritty/alacritty.yml
try_link .tmux.conf ~/.tmux.conf
try_link .inputrc ~/.inputrc

# Preferences
try_link Preferences/net.ankiweb.dtop.plist ~/Library/Preferences/net.ankiweb.dtop.plist 

