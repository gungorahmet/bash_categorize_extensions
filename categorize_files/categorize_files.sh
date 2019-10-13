#!/bin/bash
#
# Categorize files
#
# Ahmet Gungor - 20.09.2019
#

# Create Folders
mkdir -p Music
mkdir -p Video
mkdir -p Photo
mkdir -p Other

current_bash_file=`basename "$0"`

# Itarate into current path for each files.
for file in *; do
    if [ -f "$file" ]; then

        # Get file extension
        extension="${file##*.}"

        if [ "$file" == "$current_bash_file" ]; then
            echo "$current_bash_file file won't be moved"
        elif [ "$extension" == "mp3" ]; then
            mv $file Music
            echo "$file is moved to => Music folder"
        elif [ "$extension" == "avi" ]; then
            mv $file Video
            echo "$file is moved to => Video folder"
        elif [ "$extension" == "jpeg" ]; then
            mv $file Photo
            echo "$file is moved to => Photo folder"
        else
            mv $file Other
            echo "$file is moved to => Other folder"
        fi

    fi
done
