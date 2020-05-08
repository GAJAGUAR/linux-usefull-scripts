#!/bin/bash

# Prepare the system
echo "Preparing"
sudo apt update
sudo apt upgrade -y

# Installing
echo "Installing Nginx"
sudo apt install -y nginx

# Enabling traffic
echo "Enabling traffic"
sudo ufw app list
echo "Write profile name"
read profile
sudo ufw allow $profile

# Checking
echo "Open your browser and navigate to:"
echo "http://127.0.0.1 or http://localhost"
