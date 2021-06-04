set -o vi
export EDITOR=vim
export PATH=~/bin:$PATH

export NPM_USER=jonbri
export NPM_EMAIL=Jonathan.Brink@sas.com

export NC_CACHE_FILE="${HOME}/.nc"
if [ -f $NC_CACHE_FILE ]; then
    export NC=`cat $NC_CACHE_FILE`
else
    export NC=~/nova-commons
    echo $NC > $NC_CACHE_FILE
fi

export MASTER_OR_MAIN_CACHE_FILE="${HOME}/.master-or-main"
if [ -f $MASTER_OR_MAIN_CACHE_FILE ]; then
    export MASTER_OR_MAIN=`cat $MASTER_OR_MAIN_CACHE_FILE`
else
    export MASTER_OR_MAIN=master
    echo master > $MASTER_OR_MAIN_CACHE_FILE
fi

export UI5=~/dev
export OPENUIFRAMEWORK=$UI5/openui-framework
export OPENUIHONEYCOMB=$UI5/openui-honeycomb
export OPENUISDK=$UI5/openui-sdk
export OPENUITHEMES=$UI5/openui-framework-themes

export DOTFILES_DIR=${HOME}/dotfiles

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
alias gsno="gs --name-only"
alias gwip="git wip"
alias gwipnv="git wip --no-verify"
alias gc="g commit"
alias gi="gc"
alias gmend="git mend"
alias gmendnv="git add . && git commit --amend --no-verify --reuse-message=HEAD"
alias gmendp="pw && git mendp"
alias gmendr="pw && git mendr"
alias gmaster="git master"
alias gmast="gmaster"
alias gmain="gmaster"
alias gadd="git add"
alias ga="gadd"
alias gdiff="git d"
alias gdiffc="git dc"
alias gstatus="git s"
alias gfetch="git fetch"
alias gf="gfetch"
alias gadd="git add ."
alias gpom="git push origin $MASTER_OR_MAIN"
alias grom="git rebase origin/$MASTER_OR_MAIN"
alias gfgrom="gf && grom"
alias grevd="git revd"
alias grc="git rebase --continue"
alias grh="git reset HEAD~"
alias grhh="git reset HEAD~~"
alias grhhh="git reset HEAD~~~"
alias grhhhh="git reset HEAD~~~~"
alias grhhhhh="git reset HEAD~~~~~"
alias v="vim"
alias y="yarn"
alias yf="y format"
alias yys="yarn && yarn start"
alias yyb="yarn && yarn build"
alias yybs="yyb && yarn start"
alias mux="tmux attach -d -t 0"
alias p="persona"
alias ph="persona home"
alias pw="persona work"
alias pu="p --update"
alias kn="killer node"
alias kna="killer node --yes_all"
alias yb="yarn build"
alias ys="yarn start"
alias yt="yarn test"
alias ytw="yarn test --watch"
alias kys="kna && yarn start"
alias kyb="kna && yarn build"
alias kyt="kna && yarn test"
alias kytw="kna && yarn test --watch"
alias kj="killer java"
alias kja="killer java --yes_all"
alias toolbelt="cd ~/tools/toolbelt"
alias ui5="cd $UI5"
alias hon="cd $OPENUIHONEYCOMB"
alias frame="cd $OPENUIFRAMEWORK"
alias sdk="cd $OPENUISDK"
alias theme="cd $OPENUITHEMES"
alias nova="yet"
alias nova0="source nc-set nova0"
alias nova1="source nc-set nova1"
alias nova2="source nc-set nova2"
alias pet="source pet"
alias dot="source dot"
alias me="source me"
alias thyme="source thyme"
alias apps="cd $NC"/../apps
alias snip="cd $NC"/../nova-snippets
alias showcase="cd $NC"/apps/showcase/ui
alias show=showcase
alias jon="my-tools"
alias master="source master-or-main master"
alias main="source master-or-main main"

# export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0
# export LIBGL_ALWAYS_INDIRECT=1
# sudo /etc/init.d/dbus start &> /dev/null

echo "done with .bash_profile"
