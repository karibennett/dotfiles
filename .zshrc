export CLICOLOR=1
export LSCOLORS=exfxcxdxcxegedabagacad
export PROMPT='%B%F{green}%1~%f %# '

remake() {
   make clean && make;
}

cd() {
   builtin cd "$@" && ls;
}

alias ls="ls -G"
alias ll="ls -lG"
alias zshrc="vim ~/.zshrc"
alias vimrc="vim ~/.vimrc"
alias bashrc="vim ~/.bashrc"
