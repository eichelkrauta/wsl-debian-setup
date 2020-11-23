#!/usr/bin/env bash

set -euo pipefail

wget https://services.gradle.org/distributions/gradle-6.7.1-bin.zip

sudo mkdir -p /opt/gradle
sudo unzip -o -d /opt/gradle gradle-6.7.1-bin.zip

rm gradle-6.7.1-bin.zip
