set -o vi
export EDITOR=vim
export PATH=~/bin:$PATH

export OPENUIFRAMEWORK=~/dev/openui-framework
export OPENUIHONEYCOMB=~/dev/openui-honeycomb
export OPENUISDK=~/dev/openui-sdk
export OPENUITHEMES=~/dev/openui-framework-themes

export NPM_USER=jonbri
export NPM_EMAIL=Jonathan.Brink@sas.com

if grep -q Microsoft /proc/version; then
    export NC=/mnt/c/nova/nova-commons
else
    export NC=~/nova-commons
fi

alias ll="ls -la"
alias ee="exit"
alias g="git"
alias gg="g s; sleep 1; git diff"
alias ggg="g s;"
alias gd="g d"
alias gdc="g dc"
alias gshow="clear;git show"
alias gwip="git wip"
alias gmend="git mend"
alias gmendd="git mendd"
alias gmendp="git mendp"
alias gmendr="git mendr"
alias gmaster="git master"
alias gdiff="git d"
alias gdiffc="git dc"
alias gstatus="git s"
alias gfetch="git fetch"
alias gadd="git add ."
alias gpom="git push origin master"
alias grevd="git revd"
alias v="vim"
alias mux="tmux attach -d -t 0"
alias p="persona"
alias ph="persona home"
alias pw="persona work"
alias kn="killer node"
alias kna="killer node --yes_all"
alias kj="killer java"
alias kja="killer java --yes_all"
alias dot="cd ~/dotfiles"
alias toolbelt="cd ~/tools/toolbelt"
alias dev="cd ~/dev"
alias hon="cd $OPENUIHONEYCOMB"
alias frame="cd $OPENUIFRAMEWORK"
alias sdk="cd $OPENUISDK"
alias theme="cd $OPENUITHEMES"
alias nova="cd $NC"
alias snip="cd $NC"/../nova-snippets
alias showcase="cd $NC"/../nova-showcase

echo "done with .bash_profile"
