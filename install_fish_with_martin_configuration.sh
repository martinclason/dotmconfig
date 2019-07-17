# Fish
brew install fish
sudo echo "/usr/local/bin/fish" >> /etc/shells
chsh -s /usr/local/bin/fish
# Oh my fish
curl -L https://get.oh-my.fish | fish
# bob the fish (powerline theme for fish)
omf install bobthefish
brew install homebrew/cask-fonts/font-roboto-mono-for-powerline
# Tweaking
sudo echo "set -g theme_date_format \"+%H:%M\"" >> ~/.config/fish/config.fish
set -U theme_nerd_fonts no
set -Ux LSCOLORS gxfxbEaEBxxEhEhBaDaCaD
