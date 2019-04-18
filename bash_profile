export NVM_DIR="/Users/ianensor/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
export PATH="$HOME/.rbenv/bin:$PATH"

# Git branch in prompt.

parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\[\033[m\]\w\$(parse_git_branch)\$ "

export ssh=/Users/ianensor/.ssh/id_rsa
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'
