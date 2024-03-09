#!/bin/bash

# Update package index
sudo apt-get -y update && sudo apt-get -y upgrade

# Install nginx
sudo apt-get install nginx ufw 
sudo ufw allow 'Nginx Full'
sudo ufw allow 3000
sudo ufw enable -y 
sudo systemctl restart nginx 
