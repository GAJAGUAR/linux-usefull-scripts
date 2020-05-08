#!/bin/bash

echo "=> Mounting Guess Additions"
sudo mount /dev/cdrom /media/cdrom

echo "=> Installing Guess Additions"
sudo apt install build-essential linux-headers-`uname -r`
sudo /media/cdrom/./VBoxLinuxAdditions.run

# After restart scripts
echo "After restart run:" 
echo "sudo usermod -a -G vboxsf `whoami`"
echo "sudo chown -R `whoami`:users /media/sf_Shared/"

echo "=> Restaring system"
sudo shutdown -r now
