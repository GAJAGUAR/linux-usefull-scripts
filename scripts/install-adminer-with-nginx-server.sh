#!/bin/bash

echo "=> Preparing"
sudo mkdir -v /var/www/adminer

echo "=> Downloading"
sudo wget http://www.adminer.org/latest.php -O /var/www/latest.php
sudo ln -s /var/www/adminer/latest.php /var/www/adminer/index.php
sudo wget \
	https://raw.githubusercontent.com/GAJAGUAR/linux-usefull-scripts/main/scripts/adminer-nginx-config-file \
	-O /etc/nginx/adminer.local

echo "=> Enabling"
sudo ln -s /etc/nginx/sites-available/adminer.local /etc/nginx/sites-enabled/adminer.local

echo "Check and reload nginx"
sudo nginx -t
sudo systemctl reload nginx.service

