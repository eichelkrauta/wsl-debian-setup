#!/usr/bin/env bash

set -euo pipefail

sudo apt-get update
sudo apt-get install zsh git wget

# todo how to reinstall zshell?
#rm -rf /home/adame/.oh-my-zsh
#sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

mkdir -p ~/.ssh

cp ./zshrc ~/.zshrc
