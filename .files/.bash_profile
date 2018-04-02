set -o vi
export EDITOR=vim

export PATH=~/bin:$PATH

alias ll="ls -la"
alias g="git"
alias v="vim"
alias mux="tmux attach -d -t 0"

alias dot="cd ~/dotfiles"
alias toolbelt="cd ~/tools/toolbelt"

export OPENUIFRAMEWORK=~/dev/openui-framework
export OPENUIHONEYCOMB=~/dev/openui-honeycomb
export OPENUISDK=~/dev/openui-sdk
export OPENUITHEMES=~/dev/openui-framework-themes

alias dev="cd ~/dev"
alias hon="cd $OPENUIHONEYCOMB"
alias frame="cd $OPENUIFRAMEWORK"
alias sdk="cd $OPENUISDK"
alias theme="cd $OPENUITHEMES"

export NVM_DIR="/home/jonbri/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

echo "done with .bash_profile"
