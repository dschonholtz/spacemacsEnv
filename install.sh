#!/bin/bash
# This is a shell script to install this spacemacs config on a machine with no emacs config on it
# This script assumes you have docker, node, and python installed already and those are your primary dev tools

# Removes existing ~/.spacemacs file
# creates ~/.spacemacs.d/ dir
# copies init.el into it.
# installs js and python deps

rm ~/.spacemacs
mkdir -p ~/.spacemacs.d
cp ./init.el ~/.spacemacs.d/

pip install flake8 black autoflake
npm install -g eslint js-beautify prettier import-js dockerfile-language-server-nodejs
sudo wget https://github.com/hadolint/hadolint/releases/download/v2.10.0/hadolint-Linux-x86_64 -O /usr/local/bin/hadolint
