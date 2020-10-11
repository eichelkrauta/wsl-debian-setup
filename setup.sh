#!/usr/bin/env bash

set -euo pipefail

sudo apt-get update
sudo apt-get install zsh git wget

# todo how to reinstall zshell?
#rm -rf /home/adame/.oh-my-zsh
#sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

mkdir -p ~/.ssh

# Java JDK
sudo mkdir -p /usr/local/lib/java/15
sudo wget -qO- https://download.java.net/java/GA/jdk15/779bf45e88a44cbd9ea6621d33e33db1/36/GPL/openjdk-15_linux-x64_bin.tar.gz | sudo tar xvz -C /usr/local/lib/java

cp ./zshrc ~/.zshrc
