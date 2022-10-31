#!/bin/bash
if [[ $1 -nt $2 ]]; then
    echo "$1 newer than $2"
elif [[ $2 -nt $1 ]]; then
    echo "$2 newer than $1"
fi