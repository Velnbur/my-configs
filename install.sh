#!/bin/bash
echo "Moving scripts..."
mv ./tablet-mode/tablet-mode.sh -t /usr/local/bin/
mv ./laptop-mode/laptop-mode.sh -t /usr/local/bin/
chmod +x /usr/local/bin/laptop-mode.sh
chmod +x /usr/local/bin/tablet-mode.sh

echo "Creating apps"
mv ./tablet-mode/tablet-mode.desktop -t /usr/share/applications/
mv ./laptop-mode/laptop-mode.desktop -t /usr/share/applications/

echo "Moving Icons"
mkdir /usr/share/icons/mods
mv ./icons/* -t /usr/icons/mods/

echo "Done!"
echo "Please log out and then log in"
