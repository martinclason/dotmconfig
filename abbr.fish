if status --is-interactive
    set -g fish_user_abbreviations

    abbr g git
    abbr gc 'git commit'
    abbr gcm 'git commit -m'
    abbr ga 'git add'
    abbr gaa 'git add --all'
    abbr gp 'git pull'
    abbr gs 'git status'
    abbr gco 'git checkout'

    abbr h 'cd ~'
    abbr lsa 'ls -al'
    abbr c 'clear'

    abbr l "less"
    abbr em "emacs"
end

