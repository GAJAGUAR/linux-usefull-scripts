#!/bin/bash

sudo su
curl -fsSL https://deb.nodesource.com/setup_15.x | bash -
apt-get install -y nodejs
npm install -g yarn
npm install -g pnpm
exit

