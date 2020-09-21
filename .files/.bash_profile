set -o vi
export EDITOR=vim
export PATH=~/bin:$PATH

export NPM_USER=jonbri
export NPM_EMAIL=Jonathan.Brink@sas.com

if grep -q Microsoft /proc/version; then
    export NC=/mnt/c/nova/nova-commons
else
    export NC=~/nova-commons
fi

if grep -q Microsoft /proc/version; then
    export UI5=/mnt/c/dev
else
    export UI5=~/dev
fi

export OPENUIFRAMEWORK=$UI5/openui-framework
export OPENUIHONEYCOMB=$UI5/openui-honeycomb
export OPENUISDK=$UI5/openui-sdk
export OPENUITHEMES=$UI5/openui-framework-themes


alias ll="ls -la"
alias ee="exit"
alias g="git"
alias gg="g s;"
alias ggg="g s; sleep 1; git diff"
alias glg="git lg"
alias gd="g d"
alias gdc="g dc"
alias gshow="clear;git show"
alias gs="gshow"
alias gwip="git wip"
alias gc="g commit"
alias gmend="git mend"
alias gmendd="pw && git mendd"
alias gmendp="pw && git mendp"
alias gmendr="pw && git mendr"
alias gmaster="git master"
alias gmast="gmaster"
alias gadd="git add"
alias ga="gadd"
alias gdiff="git d"
alias gdiffc="git dc"
alias gstatus="git s"
alias gfetch="git fetch"
alias gf="gfetch"
alias gadd="git add ."
alias gpom="git push origin master"
alias grom="git rebase origin/master"
alias gfgrom="gf && grom"
alias grevd="git revd"
alias v="vim"
alias mux="tmux attach -d -t 0"
alias p="persona"
alias ph="persona home"
alias pw="persona work"
alias pu="p --update"
alias kn="killer node"
alias kna="killer node --yes_all"
alias kys="kna && yarn start"
alias kyt="kna && yarn test"
alias kj="killer java"
alias kja="killer java --yes_all"
alias dot="cd ~/dotfiles"
alias toolbelt="cd ~/tools/toolbelt"
alias ui5="cd $UI5"
alias hon="cd $OPENUIHONEYCOMB"
alias frame="cd $OPENUIFRAMEWORK"
alias sdk="cd $OPENUISDK"
alias theme="cd $OPENUITHEMES"
alias nova="cd $NC"
alias apps="cd $NC"/../apps
alias snip="cd $NC"/../nova-snippets
alias showcase="cd $NC"/apps/showcase/ui
alias show=showcase

echo "done with .bash_profile"
