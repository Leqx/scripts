#!/bin/bash

# Update package index
sudo apt-get -y update && sudo apt-get -y upgrade

# Install prerequisites
sudo apt-get install -y curl

# Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

source ~/.bashrc

nvm install --lts






