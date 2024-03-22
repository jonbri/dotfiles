set -o vi
export EDITOR=nvim
export GIT_EDITOR=$EDITOR
export PATH=~/bin:$PATH
export HISTFILESIZE=5000

export NC_CACHE_FILE="${HOME}/.nc"
if [ -f $NC_CACHE_FILE ]; then
  export NC=`cat $NC_CACHE_FILE`
else
  export NC=~/nova-commons
  echo $NC > $NC_CACHE_FILE
fi

export DOTFILES_DIR=${HOME}/dotfiles
export BINBIN=${DOTFILES_DIR}/bin/bin
export DOTFILES_TMP=${DOTFILES_DIR}/tmp
export TMUX_BUFFER=/tmp/_tmux-buffer.txt
export WIN_HOME="/mnt/c/Users/${USER}"
export WIN_DESKTOP="${WIN_HOME}/desktop"
export WIN_DESKTOP_SAVE="${WIN_DESKTOP}/save"

export N_PREFIX=$HOME/.n
mkdir -p $N_PREFIX
export PATH=$N_PREFIX/bin:$PATH
export PATH=/usr/local/go/bin:$PATH

alias beep="echo -e '\a'"
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
alias gsh="gshow HEAD"
alias gshh="gshow HEAD~"
alias gshhh="gshow HEAD~~"
alias gshhhh="gshow HEAD~~~"
alias gshhhhh="gshow HEAD~~~~"
alias gshhhhhh="gshow HEAD~~~~~"
alias gshhhhhhh="gshow HEAD~~~~~~"
alias gshhhhhhhh="gshow HEAD~~~~~~~"
alias gshhhhhhhhh="gshow HEAD~~~~~~~~"
alias gsno="gs --name-only"
alias gtag="git tag --sort v:refname"
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
alias gmc="git merge --continue"
alias gra="git rebase --abort"
alias gma="git merge --abort"
alias gcpc="git cherry-pick --continue"
alias gcpa="git cherry-pick --abort"
alias grh="git reset HEAD~"
alias grhh="git reset HEAD~~"
alias grhhh="git reset HEAD~~~"
alias grhhhh="git reset HEAD~~~~"
alias grhhhhh="git reset HEAD~~~~~"
alias grhhhhhh="git reset HEAD~~~~~~"
alias grhhhhhhh="git reset HEAD~~~~~~~"
alias gcfd="git clean --force -d"
alias ge="g email"
alias pfge="pullf && ge"
alias glo="g lo"
alias gstart="g init && ga && git commit -m 'start'"
alias v="$EDITOR"
alias bram="/usr/bin/vim"
alias vp="v package.json"
alias vr="v README.md"
alias vn="v node_modules"
alias vch="v CHANGELOG.md"
alias vco="v CONTRIBUTING.md"
alias t="tmux"
alias co="DISPLAY=:0 code ."
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
alias ybe="echo;y build:esm"
alias yc="echo;y clean"
alias yt="oreo;y test"
alias ytsc="oreo;y typecheck"
alias third="source third"
alias yapi="echo;y api"
alias yd="echo;y dev"
alias yys="c;y && ys"
alias yyd="c;y && yd"
alias yyb="c;y && yb"
alias yybe="c;y && ybe"
alias yyc="c;y && yc"
alias yyf="c;y && yf"
alias yyl="c;y && yl"
alias yytsc="c;y && ytsc"
alias ctree="clear && tree"
alias mux="tmux attach -d -t 0"
alias p="persona"
alias ph="p home"
alias pw="p work"
alias po="p other"
alias pbob="p bob"
alias pbill="p bill"
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
alias me="cd $HOME/me && persona home && git fetch"
alias keep="cd $HOME/keep && persona home"
alias site="cd $HOME/d*-s*-s*e && persona work"
alias siteb="cd $HOME/b/d*-s*-s*e && persona work"
alias grape="cd $HOME/icecoldnugrape && persona home"
alias seeds="cd $HOME/seeds && persona home && git fetch && $EDITOR -c \"colorscheme morning | normal Gzz\" README.md"
alias seedst="seeds && tmux"
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
alias dt="d && t"
alias D="d bash"
alias V="v ~/dotfiles/.config/nvim/init.lua"
alias ie="i && e"
alias fast="slow -d 0.03"
alias dict="$EDITOR -c \"colorscheme sorbet | normal Gzz\" ~/.config/nvim/dictionaries/custom.dictionary"
alias goals="marble --color sorbet goals"

alias droplet="ssh root@192.81.214.19"
alias fui="cd $HOME/d*-s*-f*-u* && persona work"
alias fuib="cd $HOME/b/d*-s*-f*-u* && persona work"
alias pinf="pin -f"
alias pullf="pull -f"
alias pf="pullf"
alias pfi="pf && i"
alias surf="cd $HOME/surfermoon && persona home"
alias m="marble"
alias snow="snowball"
alias snowfix="snow -m \"fix(bump): snowball\""
alias snowfixbang="snow -m \"fix(bump)!: snowball\""
alias snowfeat="snow -m \"feat(bump): snowball\""
alias snowfeatbang="snow -m \"feat(bump)!: snowball\""
alias win="cd ${WIN_HOME}/Desktop"
alias prs="site && pr && fui && pr"
alias prm="pr --me"
alias pathsave="echo \"${PATH}\" >> ${DOTFILES_TMP}/path-save.txt"
alias pathedit="pathprepare && v ${DOTFILES_TMP}/path-edit.sh && confirm writing && pathsave && source ${DOTFILES_TMP}/path-edit.sh && path"

alias fuit="fui && t"
alias fuibt="fuib && t"
alias sitet="site && t"
alias sitebt="siteb && t"

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
  NC_PATH=/home/${USER}/nova0/nova-commons
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

