set -o vi
export EDITOR=vim

export PATH=~/bin:$PATH

alias ll="ls -la"
alias g="git"
alias gwip="git wip"
alias gmend="git mend"
alias gmendd="git mendd"
alias gmendr="git mendr"
alias gdiff="git d"
alias gdiffc="git dc"
alias gstatus="git s"
alias gfetch="git fetch"
alias gadd="git add ."
alias v="vim"
alias mux="tmux attach -d -t 0"

alias dot="cd ~/dotfiles"
alias toolbelt="cd ~/tools/toolbelt"
alias nova="cd ~/nova"
alias lab="cd ~/nova/lab"
alias react="cd ~/react"
alias app="cd ~/react/react-app"
alias lib="cd ~/react/react-lib"
alias start="cd ~/react/react-start"

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
