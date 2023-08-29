clear
echo "Welcome to the CopyPaste Discord Installer for macOS!\nThis will install/update your Discord app.\nAll the info after this is the output of the commands, don't look at them if you aren't interested.\nMade by errivi.\n\n\n\n\n\n"
rmdir -f /Applications/TemporaryFiles/
osascript -e 'display notification "Sit and relax while we install Discord..." with title "Discord"'
cd /Applications/
mkdir TemporaryFiles
cd ./TemporaryFiles
curl "https://dl.discordapp.net/apps/osx/0.0.276/Discord.dmg" --output ./_dis.dmg
hdiutil attach ./_dis.dmg
cp -R /Volumes/Discord/Discord.app /Applications/
osascript -e 'display notification "Done. Enjoy chatting" with title "Discord"'
rmdir -f /Applications/TemporaryFiles/
diskutil unmount /Volumes/Discord
/Applications/Discord.app/Contents/MacOS/Discord &