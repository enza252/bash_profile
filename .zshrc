[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
export PATH="$HOME/.rbenv/bin:$PATH"

# Git branch in prompt.

parse_git_branch() {
	git symbolic-ref --short HEAD 2> /dev/null
}

#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\[\033[m\]\w\$(parse_git_branch)\$ "

setopt PROMPT_SUBST
PROMPT='%9c%{%F{green}%} $(parse_git_branch)%{%F{none}%}$ '
