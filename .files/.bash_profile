set -o vi
export EDITOR=nvim
export GIT_EDITOR=$EDITOR
export PATH=~/bin:$PATH
export HISTFILESIZE=5000

# export NODE_OPTIONS="--max-old-space-size=5120" # 5 GB
# export NODE_OPTIONS="--max-old-space-size=6144" # 6 GB
# export NODE_OPTIONS="--max-old-space-size=7168" # 7 GB
export NODE_OPTIONS="--max-old-space-size=8192" # 8 GB

export DOTFILES_DIR=${HOME}/dotfiles
export BINBIN=${DOTFILES_DIR}/bin/bin
export LCL=${BINBIN}
export L=${LCL}
export DOTFILES_TMP=${DOTFILES_DIR}/tmp
export TMUX_BUFFER=/tmp/_tmux-buffer.txt
export WIN_HOME="/mnt/c/Users/${USER}"
export WIN_DESKTOP="${WIN_HOME}/desktop"
export WIN_DESKTOP_SAVE="${WIN_DESKTOP}/save"

export ZEROONETWO="${HOME}/012"
export _0="${ZEROONETWO}/0"
export _1="${ZEROONETWO}/1"
export _2="${ZEROONETWO}/2"
mkdir -p ${_0}
mkdir -p ${_1}
mkdir -p ${_2}

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
alias gsno="gs --name-only"
alias gssno="gss --name-only"
alias gsssno="gsss --name-only"
alias gssssno="gssss --name-only"
alias gsssssno="gsssss --name-only"
alias gssssssno="gssssss --name-only"
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
alias yf="sep --text \"yf begin\";y format"
alias yl="sep --text \"yl begin\";y lint"
alias yb="sep --text \"yb begin\";y build"
alias ybe="sep --text \"ybe begin\";y build:esm"
alias yc="echo;y clean"
alias yt="sep --text \"yt begin\";y test"
alias ytsc="sep --text \"ytsc begin\";y typecheck"
alias third="source third"
alias yd="sep --text \"yd begin\";y dev"
alias ys="sep --text \"ys begin\";y start"
alias yyp="c;y && yp"
alias yyd="c;y && yd"
alias yys="c;y && ys"
alias yyb="c;y && yb"
alias yybe="c;y && ybe"
alias yyt="c;y && yt"
alias yapi="ybe && y api:extract"
alias yyapi="yybe && y api:extract"
alias yall="ytsc && yl && yapi"
alias yyall="y && yall"
alias yyc="c;y && yc"
alias yyf="c;y && yf"
alias yyl="c;y && yl"
alias yytsc="c;y && ytsc"
alias ctree="clear && tree"
alias mux="t attach -d -t 0"
alias p="persona"
alias pb="p --become"
alias pprev="persona P"
alias ph="p ph"
alias pw="p pw"
alias pp="p pp"
alias po="p other"
alias pbob="p bob"
alias pbill="p bill"
alias pfix="p --fix"
alias k="killer"
alias kn="k 'node '"
alias kna="k 'node ' --all"
alias knl="k 'node ' --list"
alias kz="k 'zed '"
alias me="cd $HOME/me && pb && gf"
alias met="me && t"
alias seeds="cd $HOME/seeds && pb && git fetch && $EDITOR -c \"colorscheme morning | normal Gzz\" README.md"
alias seedst="seeds && t"
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
alias i="ph && cd ${DOTFILES_DIR} && $DOTFILES_DIR/install"
alias I="v ${DOTFILES_DIR}/install"
alias G="v ${DOTFILES_DIR}/.files/.gitconfig"
alias T="v ${DOTFILES_DIR}/.files/.tmux.conf"
alias d="source d"
alias dt="d && t"
alias D="d bash"
alias dot="v $DOTFILES_DIR/.files"
alias V="v ${DOTFILES_DIR}/.config/nvim/init.lua"
alias ie="i && e"
alias ii="i --local"
alias iie="i --local && e"
alias it="i && t"
alias fast="slow -d 0.03"
alias goals="m --color sorbet goals"
alias sepp="sep 80"
alias jest="y test --watch"
alias vitef="./node_modules/.bin/vite --force"
alias droplet="ssh root@192.81.214.19"

dict() {
  $EDITOR -c "colorscheme sorbet | normal Gzz" $HOME/dictionary/custom.dictionary
  cd $HOME/dictionary && pb
}

alias pinf="pin --force"
alias pullf="pull --force"
alias pf="pullf"
alias pf0="pf $@ _ --nth 0"
alias pf1="pf $@ _ --nth 1"
alias pf2="pf $@ _ --nth 2"
alias pf3="pf $@ _ --nth 3"
alias pf4="pf $@ _ --nth 4"
alias pf5="pf $@ _ --nth 5"
alias pf6="pf $@ _ --nth 6"
alias pf7="pf $@ _ --nth 7"
alias pf8="pf $@ _ --nth 8"
alias pf9="pf $@ _ --nth 9"
alias pfi="pf && i"
alias surf="cd $HOME/surfermoon && pb"
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
alias versionr="version --remote"
alias juste="just --exact"

alias b="browse 80 -n example.org"
alias b3="browse 3000"
alias b31="browse 3001"
alias b8="browse 8000"
alias b88="browse 8080"
alias b9="browse 9000"

alias prod="ssh root@192.81.214.19"
alias prod-media="cd /root/media && ws --port 3001"
alias prod-app="cd /root/icecoldnugrape && pull -f && yarn && yarn build && serve out -l 3000"

alias zed="export ZED_ALLOW_EMULATED_GPU=1 && export DISPLAY=:0 && WAYLAND_DISPLAY='' ~/.local/zed.app/bin/zed . --foreground &"
alias z="zed"
alias chrome="export DISPLAY=:0 && WAYLAND_DISPLAY='' chromium-browser"
alias grapewww="chrome 'https://www.icecoldnugrape.com'"

alias ypp="yp --port=5179"
alias ydp="yd --port=5179"
alias ysp="ys --port=5179"
alias ysbp="y storybook --port=5178"

[ -z "$TMUX" ] && export TERM=xterm-256color

export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0
export LIBGL_ALWAYS_INDIRECT=1

# bun
# curl -fsSL https://bun.sh/install | bash
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH

source $HOME/.012
source $HOME/.marble
source $HOME/.que

welcome --quiet

