#!/bin/bash

echo "=> Preparing"
sudo apt-get update
sudo apt-get upgrade -y

echo "=> Running scripts"
sudo apt -y install software-properties-common
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update

echo "=> Installing PHP 7.4"
sudo apt-get install -y php7.4
sudo apt-get install -y php7.4-{fpm,bcmath,mbstring,mysql,sqlite,xml}

echo "=> Installing PHP 8.0"
sudo apt-get install -y php8.0
sudo apt-get install -y php8.0-{fpm,bcmath,mbstring,mysql,sqlite,xml}
