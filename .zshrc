# Find and set branch name var if in git repository
function parse_git_branch()
{
  branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
  if [[ $branch == "" ]];
  then
    :
  else
    echo ' - ('$branch')'
  fi
}

# Set color theme and terminal prompt
COLOR_TME=$'\e[33;01;33m'
COLOR_USR=$'\e[33;01;32m'
COLOR_DIR=$'\e[33;01;34m'
COLOR_GIT=$'\e[33;01;35m'
COLOR_DEF=$'\e[33;00m'

setopt PROMPT_SUBST
export PROMPT='${COLOR_TME}%* ${COLOR_USR}%n ${COLOR_DIR}%~${COLOR_GIT}$(parse_git_branch)${COLOR_DEF} $ '
export CLICOLOR=1
export LSCOLORS=exfxcxdxcxegedabagacad

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

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
