#!/bin/bash

# Update package index
sudo apt-get -y update && sudo apt-get -y upgrade

# Install nginx
sudo apt-get install nginx -y 