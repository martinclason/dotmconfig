#set fish_user_paths /usr/local/bin /usr/bin /bin /usr/sbin /sbin /opt/local/bin /opt/local/sbin /Users/martinclason/narwhal/bin /Users/martinclason/opt/GNAT/2018/bin /opt/X11/bin /usr/local/share/dotnet /Users/martinclason/Utveckling/Terminal/bin /Users/martinclason/.npm-packages/bin /Users/martinclason/anaconda3/bin /Users/martinclason/.local/bin ~/.cabal/bin /Users/martinclason/.ghcup/bin
# Changed path to this to fix python error when starting swift REPL
set fish_user_paths /usr/local/bin /usr/bin /usr/bin /bin /usr/sbin /sbin /opt/local/bin /opt/local/sbin /usr/local/sbin /Users/martinclason/narwhal/bin /Users/martinclason/opt/GNAT/2018/bin /opt/X11/bin /usr/local/share/dotnet /Users/martinclason/Utveckling/Terminal/bin /Users/martinclason/.npm-packages/bin /Users/martinclason/anaconda3/bin /Users/martinclason/.local/bin ~/.cabal/bin /Users/martinclason/.ghcup/bin /usr/bin/swift /Users/martinclason/opt/GNAT/2019/bin

set -gx NARWHAL_ENGINE jsc
set -gx CAPP_BUILD "/Users/martinclason/Utveckling/Cappuccino/Build"
#set -gx EDITOR "Visual Studio Code"
set -gx LANG "en_GB.UTF-8"
set -g Z_SCRIPT_PATH ~/.z
set -g theme_date_format "+%H:%M"
#set -g TERM "xterm+256color"
#set -g TERM "xterm-256color-italic"

#alias spacemacs "env HOME=$HOME/spacemacs emacs"
#alias gs "git status"
#alias gc "git commit"
#alias gcm "git commit -m"
#alias gcam "git commit -am"
#alias gaa "git add -A"

#alias l "less"

#alias config='/usr/bin/git --git-dir=$HOME/.mconfig.git/ --work-tree=$HOME'
#alias emacmacs='/Applications/Emacmacs.app/Contents/MacOS/Emacs'
#alias unidrive="cd '/Users/martinclason/Library/Mobile Documents/3L68KQB4HG~com~readdle~CommonDocuments/Documents'"

alias tvim "env TERM=xterm-256color vim"
alias clang++17 "clang++ -std=c++17 -Wall -Wextra -pedantic -Weffc++ -Wold-style-cast -Woverloaded-virtual -fmax-errors=3 -g"

set -gx GETLAB_LOCATION "~/unidrive/UPP/getlab-cli"

alias getlab "$GETLAB_LOCATION/staff_cli.py"
alias glabs "cd $GETLAB_LOCATION/labs"

set -x EDITOR vim

# Abbreviations
if test -f ~/.config/fish/abbr.fish
    source ~/.config/fish/abbr.fish
end

function mkcd 
    mkdir $argv && cd $argv
end
