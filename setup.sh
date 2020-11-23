#!/usr/bin/env bash

set -euo pipefail

sudo apt-get update
sudo apt-get install zsh git wget

sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

mkdir -p ~/.ssh

sudo mkdir -p /usr/local/lib/java/15
sudo wget -qO- https://download.java.net/java/GA/jdk15/779bf45e88a44cbd9ea6621d33e33db1/36/GPL/openjdk-15_linux-x64_bin.tar.gz | sudo tar xvz -C /usr/local/lib/java

cp ./zshrc ~/.zshrc

# IntelliJ
wget https://download.jetbrains.com/toolbox/jetbrains-toolbox-1.18.7609.tar.gz\?_ga\=2.106651530.827336593.1605463161-1658428318.1601744836 -O intellij.tar.gz
mkdir -p intellij
tar xvz -f intellij.tar.gz -C ./intellij

rm intellij.tar.gz
