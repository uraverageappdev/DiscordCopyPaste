#!/bin/bash

killall Discord

rm -r "/Applications/Discord.app"

clear

echo -e "Welcome to the CopyPaste Discord Installer for macOS!\nThis will install/update your Discord app.\nMade by errivi.\n"

if [ -f "/Applications/TemporaryFiles/_dis.dmg" ]; then
    rm "/Applications/TemporaryFiles/_dis.dmg"
fi

mkdir -p "/Applications/TemporaryFiles"

osascript -e 'display notification "Sit and relax while we install Discord..." with title "Discord"'

curl -o "/Applications/TemporaryFiles/_dis.dmg" "https://dl.discordapp.net/apps/osx/0.0.276/Discord.dmg"

hdiutil attach "/Applications/TemporaryFiles/_dis.dmg"

cp -R "/Volumes/Discord/Discord.app" "/Applications/"

osascript -e 'display notification "Done. Enjoy chatting" with title "Discord"'

hdiutil detach "/Volumes/Discord"

rm "/Applications/TemporaryFiles/_dis.dmg"

rmdir "/Applications/TemporaryFiles"

