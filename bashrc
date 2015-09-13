EDITOR="vi"
set -o vi
alias xclip='xclip -selection c'
PS1='[\w] '
if [ 0 -eq $UID ]; then
    PS1='[\w]! '
    case "$TERM" in
        screen|screen-it|screen-256color|rxvt-unicode-256color|xterm-color)
            PS1='\[\033[01;31m\][\w]\[\033[00m\] ';;
    esac
fi
