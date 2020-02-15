# mconfig: Martins dotfiles

## Installation
Run 'install.sh' and it will automatically create symlinks to the mconfig directory for the following files:
```
~/.config/fish/config.fish -> ./config.fish
~/.config/fish/abbr.fish -> ./abbr.fish
~/.vimrc -> ./.vimrc
~/.emacs.d/init.el -> ./.emacs.d/init.el
```
## Installation on linux systems without fish
Run 'install_linux.sh'. This is dependent on the submodule 'bash-powerline' to work properly. In order to fix this you need to update this submodule by running:
```
git submodule init
git submodule update
```

## Fish
```
brew install fish
sudo echo "/usr/local/bin/fish" >> /etc/shells
chsh -s /usr/local/bin/fish
```

## Oh my fish
```
curl -L https://get.oh-my.fish | fish

```
## bob the fish (powerline theme for fish)
```
omf install bobthefish
```

### Tweaking
```
sudo echo "set -g theme_date_format \"+%H:%M\"" >> ~/.config/fish/config.fish
set -U theme_nerd_fonts no
set -Ux LSCOLORS gxfxbEaEBxxEhEhBaDaCaD
```

## Powerline font
```
brew install homebrew/cask-fonts/font-roboto-mono-for-powerline
```

