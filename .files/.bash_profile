set -o vi
export EDITOR=nvim
export GIT_EDITOR=$EDITOR
export PATH=~/bin:$PATH
export HISTFILESIZE=5000

export NODE_OPTIONS="--max-old-space-size=5120" # 5 GB
# export NODE_OPTIONS="--max-old-space-size=6144" # 6 GB
# export NODE_OPTIONS="--max-old-space-size=7168" # 7 GB
# export NODE_OPTIONS="--max-old-space-size=8192" # 8 GB

export NC_CACHE_FILE="${HOME}/.nc"
if [ -f $NC_CACHE_FILE ]; then
  export NC=`cat $NC_CACHE_FILE`
else
  export NC=~/n*-commons
  echo $NC > $NC_CACHE_FILE
fi

export DOTFILES_DIR=${HOME}/dotfiles
export BINBIN=${DOTFILES_DIR}/bin/bin
export LCL=${BINBIN}
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
alias gss="gs HEAD~"
alias gsss="gs HEAD~~"
alias gssss="gs HEAD~~~"
alias gsssss="gs HEAD~~~~"
alias gssssss="gs HEAD~~~~~"
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
alias gsnoo="gss --name-only"
alias gsnooo="gsss --name-only"
alias gsnoooo="gssss --name-only"
alias gsnoooo="gssss --name-only"
alias gsnooooo="gsssss --name-only"
alias gsnoooooo="gssssss --name-only"
alias gtag="git tag --sort v:refname"
alias grv="git remote --verbose"
alias gadd="git add"
alias ga="gadd"
alias gdiff="git d"
alias gdiffc="git dc"
alias gstatus="git s"
alias gfetch="git fetch"
alias gf="gfetch"
alias gfa="gf --all"
alias gfe="gf && e"
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
alias gwip="commit --stage --message wip"
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
alias yd="echo;y dev"
alias ys="echo;y start"
alias yyp="c;y && yp"
alias yyd="c;y && yd"
alias yys="c;y && ys"
alias yyb="c;y && yb"
alias yybe="c;y && ybe"
alias yyt="c;y && yt"
alias yapi="ybe && y api:extract"
alias yyapi="yybe && y api:extract"
alias yyc="c;y && yc"
alias yyf="c;y && yf"
alias yyl="c;y && yl"
alias yytsc="c;y && ytsc"
alias ctree="clear && tree"
alias mux="t attach -d -t 0"
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
alias kz="k zed"
alias na="source nc-set a"
alias nb="source nc-set b"
alias nc="source nc-set c"
alias nat="na && t"
alias nbt="nb && t"
alias nct="nc && t"
alias me="cd $HOME/me && ph && gf"
alias met="me && t"
alias keep="cd $HOME/keep && ph"
alias keept="keep && t"
alias flag="cd $HOME/flag && ph"
alias flagt="flag && t"
alias sitea="cd $HOME/a/d*-s*-s*e && pw"
alias siteb="cd $HOME/b/d*-s*-s*e && pw"
alias sitec="cd $HOME/c/d*-s*-s*e && pw"
alias site="sitea"
alias grape="cd $HOME/icecoldnugrape && ph"
alias grapet="grape && t"
alias seeds="cd $HOME/seeds && ph && git fetch && $EDITOR -c \"colorscheme morning | normal Gzz\" README.md"
alias seedst="seeds && t"
alias apps="cd $NC"/../apps
alias capture="t capture-pane && sb"
alias capture+="t capture-pane && sb+"
alias capture++="t capture-pane && sb++"
alias capturevim="t capture-pane && sbvim"
alias capturev="capturevim"
alias capturevi="capturevim"
alias crumbs="crumb --list"
alias first="nth 0"
alias second="nth 1"
alias third="nth 2"
alias fourth="nth 3"
alias fifth="nth 4"
alias ci="commit"
alias aci="ci --stage"
alias acia="ci --stage --amend"
alias a="git commit --amend"
alias gmend="commit --stage --amend"
alias i="cd ${DOTFILES_DIR} && $DOTFILES_DIR/install"
alias I="v ${DOTFILES_DIR}/install"
alias G="v ${DOTFILES_DIR}/.files/.gitconfig"
alias T="v ${DOTFILES_DIR}/.files/.tmux.conf"
alias d="source d"
alias dt="d && t"
alias D="d bash"
alias dot="v $DOTFILES_DIR/.files"
alias V="v ${DOTFILES_DIR}/.config/nvim/init.lua"
alias ie="i && e"
alias it="i && t"
alias fast="slow -d 0.03"
alias dict="$EDITOR -c \"colorscheme sorbet | normal Gzz\" ~/.config/nvim/dictionaries/custom.dictionary"
alias goals="m --color sorbet goals"
alias sepp="sep 80"
alias jest="y test --watch"
alias vitef="./node_modules/.bin/vite --force"

alias droplet="ssh root@192.81.214.19"
alias fua="cd $HOME/a/d*-s*-f*-ui && pw"
alias fub="cd $HOME/b/d*-s*-f*-ui && pw"
alias fuc="cd $HOME/c/d*-s*-f*-ui && pw"
alias fa="fua"
alias fb="fub"
alias fc="fuc"
alias fu="fua"
alias fat="fua && t"
alias fbt="fub && t"
alias fct="fuc && t"

alias pa="cd ~/a/v*p*t* && pw"
alias pb="cd ~/b/v*p*t* && pw"
alias pc="cd ~/c/v*p*t* && pw"
alias pat="pa && t"
alias pbt="pb && t"
alias pct="pc && t"

alias vitefa="cd $HOME/a/vi*-f*i && pw"
alias vitefb="cd $HOME/b/vi*-f*i && pw"
alias vitefc="cd $HOME/c/vi*-f*i && pw"
alias nextfa="cd $HOME/a/Co*S*o && pw"
alias nextfb="cd $HOME/b/Co*S*o && pw"
alias nextfc="cd $HOME/c/Co*S*o && pw"
alias pinf="pin --force"
alias pullf="pull --force"
alias pf="pullf"
alias pfi="pf && i"
alias surf="cd $HOME/surfermoon && ph"
alias m="marble"
alias ml="m --list"
alias ma="ml"
alias snow="snowball"
alias snowfix="snow -m \"fix(bump): snowball\""
alias snowfixbang="snow -m \"fix(bump)!: snowball\""
alias snowfeat="snow -m \"feat(bump): snowball\""
alias snowfeatbang="snow -m \"feat(bump)!: snowball\""
alias snoww="snow --working"
alias snowi="snow --index"
alias snowu="snow --untracked"
alias snowe="snow --empty"
alias snowc="snow --conflict"
alias snowr="snow --release"
alias snowd="snow --destroy"
alias win="cd ${WIN_HOME}/Desktop"
alias prm="pr --me"
alias pathsave="echo \"${PATH}\" >> ${DOTFILES_TMP}/path-save.txt"
alias pathedit="pathprepare && v ${DOTFILES_TMP}/path-edit.sh && confirm writing && pathsave && source ${DOTFILES_TMP}/path-edit.sh && path"

alias fuat="fub && t"
alias fubt="fub && t"
alias fuct="fuc && t"
alias fut="fua && t"
alias siteat="sitea && t"
alias sitebt="siteb && t"
alias sitect="sitec && t"
alias sitet="siteat"

alias b="browse 80 -n example.org"
alias b3="browse 3000"
alias b31="browse 3001"
alias b8="browse 8000"
alias b88="browse 8080"
alias b9="browse 9000"

alias prod="ssh root@192.81.214.19"
alias prod-media="cd /root/media && ws --port 3001"
alias prod-app="cd /root/icecoldnugrape && pull -f && yarn && yarn build && serve out -l 3000"

alias htdocs="cd /mnt/c/Apache*/htdocs && pw"

alias zed="export ZED_ALLOW_EMULATED_GPU=1 && export DISPLAY=:0 && WAYLAND_DISPLAY='' ~/.local/zed.app/bin/zed . --foreground &"
alias z="zed"
alias chrome="export DISPLAY=:0 && WAYLAND_DISPLAY='' chromium-browser"
alias grapewww="chrome 'https://www.icecoldnugrape.com'"

alias ypp="yp --port=5179"
alias ydp="yd --port=5179"
alias ysp="ys --port=5179"
alias ysbp="y storybook --port=5178"

nfast() {
  ticker-install

  EXCLUDE=$1
  NC_PATH=/home/${USER}/n*0/n*-commons
  find ${NC_PATH}/src/n*-commons/src \
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

welcome --quiet

