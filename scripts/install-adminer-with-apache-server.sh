#!/bin/bash

# Prepare the directory container
echo "Preparing"
sudo mkdir /usr/share/adminer

# Download the single file
echo "Downloading"
sudo wget "http://www.adminer.org/latest.php" -O /usr/share/adminer/latest.php

# Create a symbolic link
echo "Linking"
sudo ln -s /usr/share/adminer/latest.php /usr/share/adminer/adminer.php

# Create a apache config file
echo "Config"
echo "Alias /adminer /usr/share/adminer/adminer.php" | sudo tee /etc/apache2/conf-available/adminer.conf

# Enable the new apache config file
echo "Enabling"
sudo a2enconf adminer.conf

# Reload apache
echo "Reloading"
sudo systemctl reload apache2

echo "Adminer installed successfully"
echo "Open your browser and navigate to:"
echo "http://127.0.0.1/adminer or http://localhost/adminer,"
echo "or change the IP address or domain if you use a remote server."

