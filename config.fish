set fish_user_paths /usr/local/bin /usr/bin /bin /usr/sbin /sbin /opt/local/bin /opt/local/sbin /Users/martinclason/narwhal/bin /Users/martinclason/opt/GNAT/2018/bin /opt/X11/bin /usr/local/share/dotnet /Users/martinclason/Utveckling/Terminal/bin /Users/martinclason/.npm-packages/bin /Users/martinclason/anaconda3/bin /Users/martinclason/.local/bin

set -gx NARWHAL_ENGINE jsc
set -gx CAPP_BUILD "/Users/martinclason/Utveckling/Cappuccino/Build"
#set -gx EDITOR "Visual Studio Code"
set -gx LANG "en_GB.UTF-8"


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

set -x EDITOR vim

# Abbreviations
if test -f ~/.config/fish/abbr.fish
    source ~/.config/fish/abbr.fish
end

function mkcd 
    mkdir $argv && cd $argv
end
