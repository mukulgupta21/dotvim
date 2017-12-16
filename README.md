# How to use?

## Dependency
One of the plugins uses `ack` which may not be installed by default.
Install it using:
```
sudo apt-get install ack
```

### Debian
Debian already has an existing `ack`. So, need to install ack-grep and rename to ack
```
sudo apt-get install ack-grep
dpkg-divert --package ack-grep --local --remove --rename --divert /usr/bin/ack /usr/bin/ack-grep
```

## Installation
```
cd ~
git clone git@github.com:mukulgupta21/dotvim.git .vim
ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim
git submodule init
git submodule update --recursive
```

### C++ autocompletion

```
apt-get install cmake
cd bundle/YouCompleteMe
./install.sh --clang-completer
```

## Updating .vim

```
git pull
git submodule update --init --recursive
```
