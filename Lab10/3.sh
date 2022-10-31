#!/bin/bash
numParams=$#
numCanNotRead=0
numCanCompile=0
for i in $@; do
    if [[ -r $i ]]; then
        gcc $i 2>/dev/null
        if [ $? -eq 0 ]; then
            numCanCompile=$((numCanCompile + 1))
        fi
    else
        ((numCanNotRead = numCanNotRead + 1))
    fi
done
echo $numParams
echo $numCanNotRead
echo $numCanCompile