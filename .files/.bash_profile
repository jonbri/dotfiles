set -o vi
export EDITOR=nvim
export GIT_EDITOR=nvim
export PATH=~/bin:$PATH

export NC_CACHE_FILE="${HOME}/.nc"
if [ -f $NC_CACHE_FILE ]; then
  export NC=`cat $NC_CACHE_FILE`
else
  export NC=~/nova-commons
  echo $NC > $NC_CACHE_FILE
fi

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
alias grp="git rev-parse HEAD"
alias grc="git rebase --continue"
alias gra="git rebase --abort"
alias grh="git reset HEAD~"
alias grhh="git reset HEAD~~"
alias grhhh="git reset HEAD~~~"
alias grhhhh="git reset HEAD~~~~"
alias grhhhhh="git reset HEAD~~~~~"
alias gcfd="git clean --force -d"
alias ge="g email"
alias v="nvim"
alias vi="nvim"
alias vim="nvim"
alias bram="/usr/bin/vim"
alias vp="v package.json"
alias vr="v README.md"
alias vn="v node_modules"
alias t="tmux"
alias co="code ."
alias o="oreo"
alias oo="o 5"
alias ooo="o 10"
alias oooo="o 15"
alias ooooo="o 20"
alias O="o 30"
alias s="serve ."
alias y="o && yarn"
alias yf="echo;y format"
alias yl="echo;y lint"
alias yb="echo;y build"
alias yc="echo;y clean"
alias yt="oreo;y test"
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
alias nova0="source nc-set nova0"
alias nova1="source nc-set nova1"
alias nova2="source nc-set nova2"
alias pet="cd $HOME/pet-app && persona work"
alias me="cd $HOME/me && persona home"
alias keep="cd $HOME/keep && persona home"
alias ticker="cd $HOME/ticker-log && persona home"
alias tick-tick="cd $HOME/tick-tick && persona home"
alias pac="cd $HOME/pacman && persona home"
alias bowlingball="cd $HOME/bowlingball && persona home"
alias site="cd $HOME/d*-s*-s*e && persona work"
alias siteb="cd $HOME/b/d*-s*-s*e && persona work"
alias grape="cd $HOME/icecoldnugrape && persona home"
alias apps="cd $NC"/../apps
alias snip="cd $NC"/../nova-snippets
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
alias aci="acommit"
alias acia="acommita"
alias cia="commita"
alias a="git commit --amend"
alias i="inst"
alias d="source d"
alias D="d bash"
alias dbash="D"
alias db="D"
alias droplet="ssh root@192.81.214.19"
alias fui="cd $HOME/d*-s*-f*-u* && persona work"
alias fuib="cd $HOME/b/d*-s*-f*-u* && persona work"
alias life="cd $HOME/life && persona home"
alias pinf="pin -f"
alias pullf="pull -f"
alias sl="echo 'assuming you mean ls...' && ls"
alias surf="cd $HOME/surfermoon && persona home"
alias no="notes"
alias snow="snowball"

alias b="browse 80 -n example.org"
alias b3="browse 3000"
alias b31="browse 3001"
alias b8="browse 8000"
alias b88="browse 8080"
alias b9="browse 9000"

alias prod-media="cd /root/media && ws --port 3001"
alias prod-app="cd /root/icecoldnugrape && pull -f && yarn && yarn build && serve out -l 3000"

alias htdocs="cd /mnt/c/Apache*/htdocs && persona work"

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

# bun
# curl -fsSL https://bun.sh/install | bash
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH

welcome

