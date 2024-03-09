#!/bin/bash

# Update package index and install necessary packages
sudo apt-get -y update && sudo apt-get -y upgrade
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common

# Install Docker 
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt install docker-ce

# Docker without sudo 
sudo usermod -aG docker ${USER}
