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
export BINBIN=${DOTFILES_DIR}/bin/bin
export TMUX_BUFFER=/tmp/_tmux-buffer.txt

export N_PREFIX=$HOME/.n
mkdir -p $N_PREFIX
export PATH=$N_PREFIX/bin:$PATH
export PATH=/usr/local/go/bin:$PATH

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
alias gl="nacho;g l | head"
alias gmendr="pw && git mendr"
alias grv="git remote --verbose"
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
alias o="nacho"
alias oo="o 5"
alias ooo="o 10"
alias oooo="o 15"
alias ooooo="o 20"
alias s="serve ."
alias y="o && yarn"
alias yf="echo;y format"
alias yl="echo;y lint"
alias yb="echo;y build"
alias yc="echo;y clean"
alias yt="nacho;y test"
alias third="source third"
alias yapi="echo;y api"
alias yd="echo;y dev"
alias yys="c;y && ys"
alias yyd="c;y && yd"
alias yyb="c;y && yb"
alias yyc="c;y && yc"
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
alias pet="cd $HOME/pet-app && persona work"
alias me="cd $HOME/me && persona home"
alias keep="cd $HOME/keep && persona home"
alias ticker="cd $HOME/ticker-log && persona home"
alias tick-tick="cd $HOME/tick-tick && persona home"
alias pac="cd $HOME/pacman && persona home"
alias b="cd $HOME/design-system-lib-base && persona work"
alias bowlingball="cd $HOME/bowlingball && persona home"
alias site="cd $HOME/design-system-site && persona work"
alias grape="cd $HOME/icecoldnugrape && persona home"
alias ui5="cd $HOME/ui5 && persona work"
alias apps="cd $NC"/../apps
alias snip="cd $NC"/../nova-snippets
alias showcase="cd $NC"/apps/showcase/ui
alias show=showcase
alias capture="tmux capture-pane && sb"
alias capture+="tmux capture-pane && sb+"
alias capture++="tmux capture-pane && sb++"
alias capturevim="tmux capture-pane && sbvim"
alias capturev="capturevim"
alias capturevi="capturevim"
alias crumbs="crumb --list"
alias first="nth 0"
alias second="nth 1"
alias third="nth 2"
alias fourth="nth 3"
alias fifth="nth 4"
alias ci="commit"
alias i="instfast"
alias iall="inst"
alias d="source d"
alias dot="vim $DOTFILES_DIR/.files"
alias bin="vim $DOTFILES_DIR/bin/bin"
alias D="d bash"
alias dbash="D"
alias db="D"
alias droplet="ssh root@192.81.214.19"
alias f="cd $HOME/f && persona home"
alias lanes="cd $HOME/lanes && persona home"
alias nex="source nex"
alias nexmono="cd $HOME/nex/nex && persona home"
alias verse="cd $HOME/verse && persona home"
alias life="cd $HOME/life && persona home"
alias pinf="pin -f"
alias pullf="pull -f"
alias fam="source fam"
alias ver="version \"@polyrepo-fam/libby-ui @polyrepo-fam/fibby-ui @polyrepo-fam/token\" --poll"
alias sl="echo 'assuming you mean ls...' && ls"
alias surf="cd $HOME/surfermoon && persona home"
alias b3="browse 3000"
alias b31="browse 3001"
alias b8="browse 8000"
alias b88="browse 8080"
alias b9="browse 9000"

GOTAGGER_EXE_PATH="$HOME/march/gotagger/build/linux/gotagger"
alias gotagger="$GOTAGGER_EXE_PATH"
alias march="cd $HOME/march && persona home"
alias gooey="cd $HOME/march/gooey && persona home"

alias appy="cd $HOME/fam/appy && persona home"
alias flappy="cd $HOME/fam/flappy && persona home"
alias libby="cd $HOME/fam/libby-ui && persona home"
alias fibby="cd $HOME/fam/fibby-ui && persona home"
alias token="cd $HOME/fam/token && persona home"

alias silly="source silly"
alias sillylib="cd $HOME/silly/sillylib && persona home"
alias sillysite="cd $HOME/silly/site && persona home"

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
