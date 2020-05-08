#!/bin/bash

echo "=> Preparing"
sudo apt update
sudo apt upgrade -y

echo "=> Running scripts"
sudo apt -y install lsb-release apt-transport-https ca-certificates
sudo wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/php.list
sudo apt update

echo "=> Installing PHP 7.4"
sudo apt install -y php7.4
sudo apt install -y php7.4-{fpm,bcmath,mbstring,mysql,sqlite,xml}

echo "=> Installing PHP 8.0"
sudo apt install -y php8.0
sudo apt install -y php8.0-{fpm,bcmath,mbstring,mysql,sqlite,xml}
