
#source ~/.bash-powerline.sh

shopt -s autocd # Allows you to cd into directory merely by typing the directory name.
#export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[    $(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
###

alias g++17='g++ -std=c++17 -Wall -Wextra -pedantic -Weffc++ -Wold-style-cast -Woverloaded-virtual -fmax-errors=3     -g'
# -Werror'
alias sendlab='~TDDC76/sendlab'
alias gs='git status'
alias gcm='git commit -m '
alias gco='git checkout'
#alias code='~TDDE18/code/bin/code'
alias tjagnatmake='gnatmake $(/courses/TDDD11/TJa/bin/tja_config)'
alias getlab='~/UPP/getlab-cli/staff_cli.py'

bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"

#eval $(ssh-agent -s) 2>/dev/null
#ssh-add ~/.ssh/id_rsa 2>/dev/null

# for vim bindings in terminal
#set -o vi
set -o emacs
#force_color_prompt=yes
#PS1='\[\033[1;36m\]\u\[\033[1;31m\]@\[\033[1;32m\]\h:\[\033[1;35m\]\w\[\033[1;31m\]\$\[\033[0m\] '

#if [ -f ~/.sensible.bash ]; then
#   source ~/.sensible.bash
#fi

#export SHELL=/bin/zsh
#exec /bin/zsh -l

#stty erase '^?'
PATH=$PATH:~/vscode
source ~/bash-powerline/bash-powerline.sh 2>/dev/null
source ~/.alias.bash
alias ls='ls --color=auto'
export LS_COLORS="di=32:ex=91:no=97"
