# Installerade program
* Magnets
* Chrome
* VS Code
* Sublime Text
* Xcode
* Crome/Vimium
* Spotify
* Alacritty
* iTerm2

# Installerade program i terminal
* Homebrew
* Xcode Command Line Tools
* Git
* Tmux
* Elm
* Node js (npm)

# Terminalkommandon
brew install git
brew install tmux
brew install node
brew install tree
brew cask install font-firacode-nerd-font
npm install -g yarn
npm install -g prisma
npm install -g graphql-cli
brew install mongodb
npm install -g elm-oracle
npm install -g elm-format
brew install macvim
brew cask install graphiql
brew install elixir
brew install postgres

## Mongodb
brew install mongodb
sudo mkdir -p /data/db
sudo chown isaacclason /data/db

## Fish
brew install fish
sudo echo "/usr/local/bin/fish" >> /etc/shells
chsh -s /usr/local/bin/fish

## Oh my fish
curl -L https://get.oh-my.fish | fish

## bob the fish (powerline theme for fish)
omf install bobthefish

### Tweaking
sudo echo "set -g theme_date_format \"+%H:%M\"" >> ~/.config/fish/config.fish
set -U theme_nerd_fonts yes
set -Ux LSCOLORS gxfxbEaEBxxEhEhBaDaCaD

## Powerline font
brew install homebrew/cask-fonts/font-roboto-mono-for-powerline

## Övrigt
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/sublime
defaults write com.apple.dock autohide-time-modifier -float 0.15;killall Dock
npm install -g elm-format

### Bra länk
https://medium.com/tuannguyendotme/set-up-the-fish-shell-on-mac-step-by-step-6a77bcb2687c

## Tmux
echo "set -g default-terminal \"xterm-256color\"" >> .tmux.conf
echo "alias tmux "tmux -u" >> .config/fish/config.fish

## Vim
### Bra länk
https://dougblack.io/words/a-good-vimrc.html

## Emacs
### Bra alt - https://github.com/railwaycat/homebrew-emacsmacport
brew tap railwaycat/emacsmacport
brew install emacs-mac
ln -s /usr/local/opt/emacs-mac/Emacs.app /Applications



### Alt som inte funkade - https://bitbucket.org/mituharu/emacs-mac.git
brew install autoconf
brew install texinfo # innehåller nyare version av makeinfo som behövs
git clone https://bitbucket.org/mituharu/emacs-mac.git
cd emacs-mac
./autogen.sh
set -U fish_user_paths /usr/local/lib/node_modules/elm-format /usr/local/opt/texinfo/bin
./configure --enable-mac-app CC="clang -fobjc-arc" --with-gnutls=no
make
make install

https://github.com/ajh17/VimCompletesMe
autocmd FileType vim let b:vcm_tab_complete = 'vim' >> .vimrc

## Fixa xcode-select: error: (xed funkar nu)
sudo xcode-select -s /Applications/Xcode.app/Contents/Developer

## Elixir
### Phoenix
https://code.likeagirl.io/how-to-install-elixir-and-phoenix-on-mac-dc21f8ce5a15
mix local.hex 
mix archive.install https://github.com/phoenixframework/archives/raw/master/phx_new.ez

# Kortkommandon
cmd-§ - Flytta fokus till nästa fönster

# Övrig setup
