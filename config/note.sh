#!/bin/zsh

NOTES_PATH=~/Desktop/notes

if [ $# -eq 0 ]; then

    file_name=$NOTES_PATH/$(date '+%m-%d').md
    if [ ! -e "$file_name" ]; then
        touch $file_name
        cp $NOTES_PATH/config/template.md $file_name
    fi
    nvim "$file_name"

elif [ $# -eq 1 ]; then

    file_name="$1".md
    if [ ! -e "$file_name" ]; then
        touch $file_name
        # cp ~/Desktop/notes/config/template.md "$file_name"
    fi
    nvim "$file_name"

else

    echo "引数が正しくありません"
    exit 1

fi
