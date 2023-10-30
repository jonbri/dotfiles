# dotfiles

- install packages from apt and node (see below)
- `mkdir -p ~/tools`
- `mkdir -p ~/dotfiles/tmp`
- `./install`

## Packages

### apt
```sh
openssh-server openssh-client g++ curl libssl-dev make net-tools
```

### Neovim
Stable:
```sh
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt install neovim=0.7.2-3~bpo20.04.1~ppa1
```

Unstable:
```sh
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim
```

## NodeJS

[n](https://www.npmjs.com/package/n) (preferred):
```sh
sudo npm install --global n
```

Manual:
```sh
sudo curl -sL https://deb.nodesource.com/setup_18.x | sudo bash - && sudo apt-get install -y nodejs
```

## Global Node Tools
```sh
sudo npm install --global yarn conny serve degit buffaloes seolaffub n
```
