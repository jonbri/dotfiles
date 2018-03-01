set -o vi
export EDITOR=vim

export PATH=~/bin:$PATH

alias ll="ls -la"
alias g="git"
alias v="vim"
alias mux="tmux attach -d -t 0"

alias dot="cd ~/dotfiles"
alias toolbelt="cd ~/tools/toolbelt"

alias dev="cd ~/dev"
alias hon="cd ~/dev/openui-honeycomb"
alias frame="cd ~/dev/openui-framework"
alias sdk="cd ~/dev/openui-sdk"
alias theme="cd ~/dev/openui-framework-themes"

export NVM_DIR="/home/jonbri/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

echo "done with .bash_profile"
