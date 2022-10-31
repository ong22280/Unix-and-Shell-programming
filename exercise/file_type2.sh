#!/bin/bash
if [[ ! -a $1 ]]; then
    echo "No exist"
elif [[ ! -r $1 ]]; then
    echo "Can't read the file (no permission)"
elif [[ -d $1 ]]; then
    echo "$1 is a directory"
elif [[ -f $1 ]]; then
    echo "$1 is a regular file"
elif [[ -h $1 ]]; then
    echo "$1 is a symbolic link"
else 
    echo "$1 unknown file type"
fi