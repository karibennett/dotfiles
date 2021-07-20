remake() {
   make clean && make;
}

cd() {
   builtin cd "$@" && ls;
}

export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w \[\033[00m\]\$ "
alias bashprof="vim ~/.bash_profile"
alias zshrc="vim ~/.zshrc"
alias bashrc="vim ~/.bashrc"
alias vimrc="vim ~/.vimrc"
