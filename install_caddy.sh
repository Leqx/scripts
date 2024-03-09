#!/bin/bash

# Update package index and install necessary packages
sudo apt-get -y update && sudo apt-get -y upgrade
sudo apt-get install -y debian-keyring debian-archive-keyring apt-transport-https 

# Download Caddy GPG key and add it to keyring
curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/gpg.key' | sudo gpg --dearmor -o /usr/share/keyrings/caddy-stable-archive-keyring.gpg

# Add Caddy APT repository to sources list
curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/debian.deb.txt' | sudo tee /etc/apt/sources.list.d/caddy-stable.list

# Update package index again to include Caddy repository
sudo apt-get update -y

# Install Caddy server
sudo apt-get install caddy