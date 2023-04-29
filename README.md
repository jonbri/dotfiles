# dotfiles

Run `install` to get started

## Packages

### apt
```sh
tree tmux vim openssh-server openssh-client g++ curl libssl-dev make net-tools
```

### Neovim
```sh
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt install neovim=0.7.2-3~bpo20.04.1~ppa1
```

## NodeJS
[n](https://www.npmjs.com/package/n).

Manual:
```sh
sudo curl -sL https://deb.nodesource.com/setup_14.x | sudo bash - && sudo apt-get install -y nodejs
```

## Global Node Tools
```sh
sudo npm install --global yarn conny serve degit buffaloes seolaffub n
```
