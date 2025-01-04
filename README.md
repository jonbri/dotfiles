# dotfiles

```sh
sudo apt update
sudo apt install --yes vim tmux npm tree jq openssh-server openssh-client g++ curl libssl-dev make net-tools zip
sudo npm install --global n yarn conny serve degit buffaloes seolaffub n verdaccio

# node
sudo n 20

# neovim
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update
sudo apt install neovim

# dotfiles
mkdir -p ~/dotfiles/tmp
# esesh
git clone git@github.com:jonbri/dotfiles.git ~/dotfiles
cd ~/dotfiles && ./install
name
:PlugInstall
```

