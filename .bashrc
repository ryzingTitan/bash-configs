parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[\033[1;32m\]\u@\h:\[\033[0;34m\]\w\[\033[0;33m\]\$(parse_git_branch)\[\033[0;00m\]$ "