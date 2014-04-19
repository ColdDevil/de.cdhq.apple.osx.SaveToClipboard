#!/bin/sh
export LANG=de_DE.UTF-8
baseFolder="/Users/Flo/_SaveToClipboard"
fileName=$(ls -F "$baseFolder" | grep -v '/' | grep -v '*' | head -n 1)
if [ -n "$fileName" ]; then
    fileFullPath="$baseFolder/$fileName"
    cat "$fileFullPath" | pbcopy
    rm "$fileFullPath"
fi
