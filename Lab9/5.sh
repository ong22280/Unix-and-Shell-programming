#!/bin/bash
# compare sizes from two parameters
if [[ -f $1 && -f $2 ]]; then
    size1=`ls -l $1 | cut -f5 -d' '`
    size2=`ls -l $2 | cut -f5 -d' '`
    if (( $size1 > $size2 )); then
        echo $1
    elif (( $size1 < $size2 )); then
        echo $2
    else
        echo $1 $2
        exit 0
    fi
else
    exit 1
fi