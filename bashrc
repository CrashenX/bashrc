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
vim-git-diff() {
    if [ $# -eq 0 ]
    then
        since='HEAD'
    else
        since=$1
    fi

    git_cmd="git diff --name-only $since"
    files=$($git_cmd)

    if [ -z "$files" ]
    then
        echo "No diff to show for $since"
        return 1
    fi

    gdiff="'+tabdo Gvdiff $since' +tabfirst"
    vim_cmd="vim -p $files $gdiff"

    eval $vim_cmd
    return 0
}
ssh-vi() {
    ssh -t $1 "bash -i -o vi"
}
