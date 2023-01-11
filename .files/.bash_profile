set -o vi
export EDITOR=vim
export PATH=~/bin:$PATH

export NC_CACHE_FILE="${HOME}/.nc"
if [ -f $NC_CACHE_FILE ]; then
    export NC=`cat $NC_CACHE_FILE`
else
    export NC=~/nova-commons
    echo $NC > $NC_CACHE_FILE
fi

export BASE_CACHE_FILE="${HOME}/.base"
if [ -f $BASE_CACHE_FILE ]; then
    export BASE=`cat $BASE_CACHE_FILE`
else
    export BASE=~/design-system-lib-base
    echo $BASE > $BASE_CACHE_FILE
fi

export UI5=${HOME}/dev
export OPENUIFRAMEWORK=$UI5/openui-framework
export OPENUIHONEYCOMB=$UI5/openui-honeycomb
export OPENUISDK=$UI5/openui-sdk
export OPENUITHEMES=$UI5/openui-framework-themes

export DOTFILES_DIR=${HOME}/dotfiles
export TMUX_BUFFER=/tmp/_tmux-buffer.txt

alias i="cd $DOTFILES_DIR && $DOTFILES_DIR/install"
alias c="clear"
alias ll="ls -la"
alias e="exit"
alias ee="e"
alias eee="e"
alias g="git"
alias gg="g s;"
alias ggg="g s; sleep 1; git diff"
alias glg="git lg"
alias gd="g d"
alias gdc="g dc"
alias gshow="clear;git show"
alias gs="gshow"
alias gsno="gs --name-only"
alias gc="g commit"
alias gi="gc"
alias gl="n;g l | head"
alias gmendr="pw && git mendr"
alias gmain="gmain"
alias gadd="git add"
alias ga="gadd"
alias gdiff="git d"
alias gdiffc="git dc"
alias gstatus="git s"
alias gfetch="git fetch"
alias gf="gfetch"
alias gfa="gf --all"
alias gadd="git add ."
alias gfgrom="gf && grom"
alias gap="ga -p"
alias grevd="git revd"
alias grc="git rebase --continue"
alias gra="git rebase --abort"
alias grh="git reset HEAD~"
alias grhh="git reset HEAD~~"
alias grhhh="git reset HEAD~~~"
alias grhhhh="git reset HEAD~~~~"
alias grhhhhh="git reset HEAD~~~~~"
alias gcfd="git clean --force -d"
alias ge="g email"
alias v="vim"
alias vp="v package.json"
alias vr="v README.md"
alias vn="v node_modules"
alias t="tmux"
alias co="code ."
alias n="nacho"
alias nn="n;n"
alias nnn="n;n;n"
alias nnnn="n;n;n;n"
alias nnnnn="n;n;n;n;n"
alias s="serve ."
alias y="n && yarn"
alias yf="echo;y format"
alias yl="echo;y lint"
alias yb="echo;y build"
alias yt="n;y test"
alias coverage="source coverage"
alias third="source third"
alias yapi="echo;y api"
alias yd="echo;y dev"
alias yys="c;y && ys"
alias yyd="c;y && yd"
alias yyb="c;y && yb"
alias yyf="c;y && yf"
alias yyl="c;y && yl"
alias ctree="clear && tree"
alias mux="tmux attach -d -t 0"
alias p="persona"
alias ph="p home"
alias pw="p work"
alias pfix="p --fix"
alias k="killer"
alias kn="k node"
alias kna="k node --yes_all"
alias kj="k java"
alias kja="k java --yes_all"
alias kd="k doom"
alias kda="k doom --yes_all"
alias hon="p --quiet work && cd $OPENUIHONEYCOMB"
alias frame="p --quiet work && cd $OPENUIFRAMEWORK"
alias sdk="p --quiet work && cd $OPENUISDK"
alias theme="cd $OPENUITHEMES"
alias nova0="source nc-set nova0"
alias nova1="source nc-set nova1"
alias nova2="source nc-set nova2"
alias base0="source base-set base0"
alias base1="source base-set base1"
alias base2="source base-set base2"
alias pet="source pet"
alias dot="source dot"
alias d="dot"
alias me="source me"
alias ti="source ti"
alias ticker="source ticker"
alias tick-tick="source tick-tick"
alias pac="source pac"
alias base="source base"
alias b="base"
alias bowlingball="source bowlingball"
alias site="source site"
alias icecoldnugrape="source icecoldnugrape"
alias grape="source icecoldnugrape"
alias ui5="source ui5"
alias apps="cd $NC"/../apps
alias snip="cd $NC"/../nova-snippets
alias showcase="cd $NC"/apps/showcase/ui
alias show=showcase
alias sb="tmux save-buffer $TMUX_BUFFER && notepad.exe $TMUX_BUFFER"
alias sb+="tmux save-buffer $TMUX_BUFFER && /mnt/c/Program\ Files\ \(x86\)/Notepad++/notepad++.exe $TMUX_BUFFER"
alias sb++="sb+"
alias sbvim="tmux save-buffer $TMUX_BUFFER && /mnt/c/Program\ Files/Vim/vim81/gvim.exe $TMUX_BUFFER"
alias sbv="sbvim"
alias sbvi="sbvim"
alias capture="tmux capture-pane && sb"
alias capture+="tmux capture-pane && sb+"
alias capture++="tmux capture-pane && sb++"
alias capturevim="tmux capture-pane && sbvim"
alias capturev="capturevim"
alias capturevi="capturevim"
alias push="echo pin"
alias crumbs="crumb --list"
alias first="nth 0"
alias second="nth 1"
alias third="nth 2"
alias fourth="nth 3"
alias fifth="nth 4"

novafast() {
  ticker-install

  EXCLUDE=$1
  NC_PATH=/home/jonbri/nova0/nova-commons
  find ${NC_PATH}/src/nova-commons/src \
    -type d -name "__stories__" \
    -not -ipath "*/*${EXCLUDE}*/*" \
    -not -path "*/src/__stories__" \
    -not -path "*/locale/*" \
    -exec rm -rf {} +
}

[ -z "$TMUX" ] && export TERM=xterm-256color

export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0
export LIBGL_ALWAYS_INDIRECT=1
# sudo /etc/init.d/dbus start &> /dev/null

echo "done with .bash_profile"
