de.cdhq.apple.osx.SaveToClipboard
=================================

With basic elements of OS X it is possible to designate a certain folder as input for the clipboard. When a file is saved into this folder a script reads its contents, saves it to the clipboard and deletes the file.


How to install
--------------
I assume the folder is called `_SaveToClipboard` and is located at `/Users/Flo/_SaveToClipboard/`. Please change the path accordingly. 

1. Create the folder `/Users/Flo/_SaveToClipboard/`
2. Create the script file [`_SaveToClipboard.command`](_SaveToClipboard.command) in `/Users/Flo/_SaveToClipboard.command`
3. Make the script executable (manually via CMD+I or via Terminal: `chmod +x _SaveToClipboard.command`)
4. Create the launch configuration file [`de.cdhq.apple.osx.SaveToClipboardLogger.plist`](de.cdhq.apple.osx.SaveToClipboardLogger.plist) in `/Users/Flo/Library/LaunchAgents/de.cdhq.apple.osx.SaveToClipboardLogger.plist`
5. Register the lauch configuration via Terminal command: `launchctl load /Users/Flo/Library/LaunchAgents/de.cdhq.apple.osx.SaveToClipboardLogger.plist`


How to uninstall
----------------
To uninstall simply unregister the launch configuration via `launchctl unload /Users/Flo/Library/LaunchAgents/de.cdhq.apple.osx.SaveToClipboardLogger.plist`.