set -o vi
export EDITOR=vim

alias ll="ls -la"
alias g="git"
alias v="vim"

export NVM_DIR="/home/jonbri/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

echo "done with .bash_profile"
