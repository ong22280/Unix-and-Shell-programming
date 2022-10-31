#!/bin/bash
if (( $1 > $2 )); then
    echo "$1 is more than $2"
elif (( $2 > $1 )); then
    echo "$1 is less than $2"
else
    echo "$1 is equal $2"
fi
