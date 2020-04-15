set -o vi
export EDITOR=vim

export PATH=~/bin:$PATH

alias ll="ls -la"
alias g="git"
alias gg="g s; sleep 1; git diff"
alias ggg="g s;"
alias gd="g d"
alias gdc="g dc"
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
alias kn="killer node"

alias dot="cd ~/dotfiles"
alias toolbelt="cd ~/tools/toolbelt"

export OPENUIFRAMEWORK=~/dev/openui-framework
export OPENUIHONEYCOMB=~/dev/openui-honeycomb
export OPENUISDK=~/dev/openui-sdk
export OPENUITHEMES=~/dev/openui-framework-themes

if grep -q Microsoft /proc/version; then
    export NC=/mnt/c/nova-commons
else
    export NC=~/nova-commons
fi

alias dev="cd ~/dev"
alias hon="cd $OPENUIHONEYCOMB"
alias frame="cd $OPENUIFRAMEWORK"
alias sdk="cd $OPENUISDK"
alias theme="cd $OPENUITHEMES"
alias nova="cd $NC"

echo "done with .bash_profile"
