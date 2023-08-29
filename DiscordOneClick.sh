#!/bin/bash

killall Discord &>/dev/null

rm -r "/Applications/Discord.app" &>/dev/null

clear

echo "Discord in One Click v.1\nCoded by errivi\nThis is not affiliated with Discord.\n\n"

if [ -f "/Applications/TemporaryFiles/_dis.dmg" ]; then
    rm "/Applications/TemporaryFiles/_dis.dmg" &>/dev/null
fi

mkdir -p "/Applications/TemporaryFiles"

echo "Downloading Discord..."

curl -o "/Applications/TemporaryFiles/_dis.dmg" "https://dl.discordapp.net/apps/osx/0.0.276/Discord.dmg" &>/dev/null

echo "Extracting Discord..."

hdiutil attach "/Applications/TemporaryFiles/_dis.dmg" &>/dev/null

echo "Installing..."

cp -R "/Volumes/Discord/Discord.app" "/Applications/" &>/dev/null

echo "Install complete! Cleaning up temporary files..."

hdiutil detach "/Volumes/Discord" &>/dev/null

rm "/Applications/TemporaryFiles/_dis.dmg" &>/dev/null

rmdir "/Applications/TemporaryFiles" &>/dev/null

clear

echo "Done!"
