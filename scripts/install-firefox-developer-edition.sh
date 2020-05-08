#!/bin/bash

# Download
echo "=> Downloading..."
wget -O ~/Downloads/FirefoxDeveloper.tar.bz2 "https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64"

# Extract
echo "=> Extracting..."
sudo tar xjf ~/Downloads/FirefoxDeveloper.tar.bz2 -C /opt/
sudo mv /opt/firefox/ /opt/firefox_dev/

# Launcher
echo "=> Creating launcher..."
touch ~/.local/share/applications/firefox_dev.desktop
cat > ~/.local/share/applications/firefox_dev.desktop<<EOL
[Desktop Entry]
Name=Firefox Developer
GenericName=Firefox Developer Edition
Exec=/opt/firefox_dev/firefox %u
Terminal=false
Icon=/opt/firefox_dev/browser/chrome/icons/default/default128.png
Type=Application
Categories=Application;Network;X-Developer;
Comment=Firefox Developer Edition Web Browser.
StartupWMClass=Firefox Developer Edition
EOL
chmod +x ~/.local/share/applications/firefox_dev.desktop

# Finish
echo "=> Firefox Developer Edition has been installed in your system!"
